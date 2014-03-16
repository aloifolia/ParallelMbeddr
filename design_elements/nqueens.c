/*
 * nqueens.c
 *
 *  Created on: 13.03.2014
 *      Author: bastian
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <pthread.h>
#include <semaphore.h>
#include <stdbool.h>
#include "nqueens.h"
#define PROCESS_INTERN 0

typedef struct {
  int numberOfQueens;
  int numberOfWorkers;
  int lengthOfBuffers;
  size_t byteSizeOfBuffers;
  size_t byteSizeOfPermutations;
} Configuration;

typedef struct {
  int** permutations;
  int frontIndex;
  int rearIndex;
  // variables (pseudo-mutexes) for section queue 2:
  // int empty, full;
  // boolean read, write;
} Buffer;

Configuration* config;
Buffer* permutationBuffer;
Buffer* solutionBuffer;

int main(int argc, char* argv[]) {
  if (argc != 4) {
    printf("\nn-queens usage: nqueens [number of queens] [number of workers] [length of buffers]\n\n");
    exit(1);
  }

  config = malloc(sizeof(Configuration));
  config->numberOfQueens = atoi(argv[1]);
  config->numberOfWorkers = atoi(argv[2]);
  config->lengthOfBuffers = atoi(argv[3]);
  config->byteSizeOfPermutations = config->numberOfQueens * sizeof(int);
  config->byteSizeOfBuffers = config->lengthOfBuffers * sizeof(int*);
  permutationBuffer = malloc(sizeof(Buffer));
  permutationBuffer->permutations = malloc(config->byteSizeOfBuffers);
  permutationBuffer->frontIndex = 0;
  permutationBuffer->rearIndex = 0;
  solutionBuffer = malloc(sizeof(Buffer));
  solutionBuffer->permutations = malloc(config->byteSizeOfBuffers);
  solutionBuffer->frontIndex = 0;
  solutionBuffer->rearIndex = 0;

  runThreads();
}

// section queue 1: access is basically completely serialized 
void storeNextPermutation(int* permutation, Buffer* buffer) {
  while (true) {
    sync (*(buffer->permutations), buffer->frontIndex, buffer->rearIndex) {
	    // ensure that at least one slot remains free
	    if((buffer->frontIndex + 1) % config->lengtOfBuffers == buffer->rearIndex) {
	      // avoid dead-locks
	      repeat;
      }
        buffer->permutations[buffer->frontIndex] = permutation;
        buffer->frontIndex = (buffer->frontIndex + 1) % config->lengthOfBuffers;
      }
	  }
  }
}

int* readNextPermutation(Buffer* buffer) {
  while (true) {
    sync (*(buffer->permutations), buffer->frontIndex, buffer->backIndex) {
	    if((buffer->rearIndex + 1) % config->lengtOfBuffers > buffer->frontIndex) {
	      // avoid dead-locks
	      repeat;
	    }
      int* permutation = buffer->permutations[buffer->rearIndex];
      buffer->permutations[buffer->rearIndex] = NULL;
      buffer->rearIndex = (buffer->rearIndex + 1) % config->lengthOfBuffers;
	  }
  }
}

// section queue 2: simultaneous reading and writing possible by recreation of semaphores
//                -> suppose, buffer has fields (empty, full : int) and (write, read : boolean)
void storeNextPermutation(int* permutation, Buffer* buffer) {
  while (true) {
    sync buffer->write  {
      sync buffer->empty  {
	      if (buffer->empty == 0) {
		      // busy-waiting here instead of sleep
		      // could also refer to a separate while(true)-loop around sync(buffer->empty)
	        repeat;  
	      } else {
          buffer->empty--;
		    }
      }
	  
	    sync buffer->frontIndex {
        buffer->permutations[buffer->frontIndex] = permutation;
        buffer->frontIndex = (buffer->frontIndex + 1) % config->lengthOfBuffers;
      }
	  }
	  
	  sync buffer->full {
	    buffer->full++;
	  }
	  
	  break;
  }
}

int* readNextPermutation(Buffer* buffer) {
  while (true) {
    sync(buffer->read) {
      sync(buffer->full) {
	      if (buffer->full == 0) {
	        repeat;  
	      } else {
		      buffer->full--;
		    }
      }
	  
	    sync(buffer->rearIndex) {
        int* permutation = buffer->permutations[buffer->rearIndex];
        buffer->permutations[buffer->rearIndex] = NULL;
        buffer->rearIndex = (buffer->rearIndex + 1) % config->lengthOfBuffers;
	    }
	  }
	  
	  sync(buffer->empty) {
	    buffer->empty++;
	  }
	  
	  break;
	}
}

void runThreads()
{
  run, join |permutationGenerator()|;
  for (int i = 0; i < config->numberOfWorkers; ++i) {
    run, join |permutationFilter()|;
  }
  run, join |permutationStorer()|;
}

// section permutationGenerator
void permutationGenerator() {
  int* currentPermutation = malloc(config->byteSizeOfPermutations);
  for (int i = 0; i < config->numberOfQueens; ++i) {
    currentPermutation[i] = i;
  }

  int* nextPermutation = malloc(config->byteSizeOfPermutations);
  memcpy(nextPermutation, currentPermutation, config->byteSizeOfPermutations);
  // critical
  storeNextPermutation(currentPermutation, permutationBuffer);
  while (permutable(nextPermutation)) {
    permute(nextPermutation);
    currentPermutation = nextPermutation;
    nextPermutation = malloc(config->byteSizeOfPermutations);
    memcpy(nextPermutation, currentPermutation, config->byteSizeOfPermutations);
    // critical
    storeNextPermutation(currentPermutation, permutationBuffer);
  }
}


// only lexicographically permutable if there exists a largest index k
// such that permutation[k] < permutation[k+1]
bool permutable(int* permutation) {
  for (int i = config->numberOfQueens - 2; i >= 0; --i) {
    if (permutation[i] < permutation[i+1]) {
      return true;
    }
  }
  return false;
}

// based on Narayana Pandita
int* permute(int* permutation) {
  // find largest index k such that permutation1[k] < permutation1[k+1]
  int largestK = config->numberOfQueens - 2;
  for (; largestK >= 0; --largestK) {
    if (permutation[largestK] < permutation[largestK+1]) {
      break;
    }
  }
  // find largest index l such that permutation1[k] < permutation1[l]
  int largestL = config->numberOfQueens - 1;
  for (; largestL >= 0; --largestL) {
    if (permutation[largestK] < permutation[largestL]) {
      break;
    }
  }
  // swap the elements at indices k and l
  swap(permutation, largestK, largestL);
  // reverse permutation1 from index k+1 up to the last index
  for (int i = largestK + 1, j = config->numberOfQueens - 1;
       i < j;
       ++i, --j) {
    swap(permutation, i, j);
  }

  return permutation;
}

void swap(int* permutation, int i, int j) {
  int temp = permutation[i];
  permutation[i] = permutation[j];
  permutation[j] = temp;
}

// section permutationFilter
void* permutationFilter(void* arg) {
  while (true) {
    // critical
    int* nextPermutation = readNextPermutation(permutationBuffer);
    if (filterNextPermutation(nextPermutation)) {
	  // critical
      storeNextPermutation(nextPermutation, solutionBuffer);
    }
    else {
      free(nextPermutation);
    }
  }

  return NULL;
}

bool filterNextPermutation(int* nextPermutation) {
  for (int i = 0; i < config->numberOfQueens; ++i) {
    for (int j = i + 1; j < config->numberOfQueens; ++j) {
      if (fabs(nextPermutation[j] - nextPermutation[i]) == j - i) {
	    return false;
      }
    }
  }
  return true;
}

// section permutationStorer

void permutationStorer() {

  for (int i = 0; true; ++i) {
    // critical
    int* permutation = readNextPermutation(solutionBuffer);
    char answer[15];
    sprintf(answer, "solution %5d:", i);
    printPermutation(answer, permutation);
    free(permutation);
  }
}

void printPermutation(char prefix[], int* permutation) {
  printf("\n%s ", prefix);
  for (int i = 0; i < config->numberOfQueens; ++i) {
    printf("%d", permutation[i]);
  }
  printf("\n");
}

