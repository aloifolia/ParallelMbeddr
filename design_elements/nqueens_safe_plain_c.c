/*
 * nqueens_safe_plain_c.c
 *
 *  Created on: 03.02.2014
 *      Author: bastian
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
  sem_t empty, full;
  sem_t readMutex;
  sem_t writeMutex;
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

// section queue
void storeNextPermutation(int* permutation, Buffer* buffer) {
  sem_wait(&buffer->empty);
  sem_wait(&buffer->writeMutex);
  buffer->permutations[buffer->frontIndex] = permutation;
  buffer->frontIndex = (buffer->frontIndex + 1) % config->lengthOfBuffers;
  sem_post(&buffer->writeMutex);
  sem_post(&buffer->full);
}

int* readNextPermutation(Buffer* buffer) {
  sem_wait(&buffer->full);
  sem_wait(&buffer->readMutex);
  int* permutation = buffer->permutations[buffer->rearIndex];
  buffer->permutations[buffer->rearIndex] = NULL;
  buffer->rearIndex = (buffer->rearIndex + 1) % config->lengthOfBuffers;
  sem_post(&buffer->readMutex);
  sem_post(&buffer->empty);
  return permutation;
}

void runThreads()
{
  pthread_t generatorID;
  pthread_t filterIDs[config->numberOfWorkers];
  pthread_t storerID;
  sem_init(&permutationBuffer->empty, PROCESS_INTERN, config->lengthOfBuffers);
  sem_init(&permutationBuffer->full, PROCESS_INTERN, 0);
  sem_init(&permutationBuffer->readMutex, PROCESS_INTERN, 1);
  sem_init(&permutationBuffer->writeMutex, PROCESS_INTERN, 1);
  sem_init(&solutionBuffer->empty, PROCESS_INTERN, config->numberOfWorkers);
  sem_init(&solutionBuffer->full, PROCESS_INTERN, 0);
  sem_init(&solutionBuffer->readMutex, PROCESS_INTERN, 1);
  sem_init(&solutionBuffer->writeMutex, PROCESS_INTERN, 1);
  pthread_create(&generatorID, NULL, &permutationGenerator, NULL);
  for (int i = 0; i < config->numberOfWorkers; ++i) {
    pthread_create(&filterIDs[i], NULL, &permutationFilter, NULL);
    printf("created worker thread %d\n", i);
  }
  pthread_create(&storerID, NULL, &permutationStorer, NULL);
  if (pthread_join(generatorID, NULL)) {
	  printf("Error occurred on join.");
	  exit(1);
  }
}

// section permutationGenerator
void* permutationGenerator(void* arg) {
  int* currentPermutation = malloc(config->byteSizeOfPermutations);
  for (int i = 0; i < config->numberOfQueens; ++i) {
    currentPermutation[i] = i;
  }

  int* nextPermutation = malloc(config->byteSizeOfPermutations);
  memcpy(nextPermutation, currentPermutation, config->byteSizeOfPermutations);
  storeNextPermutation(currentPermutation, permutationBuffer);
  while (permutable(nextPermutation)) {
    permute(nextPermutation);
    currentPermutation = nextPermutation;
    nextPermutation = malloc(config->byteSizeOfPermutations);
    memcpy(nextPermutation, currentPermutation, config->byteSizeOfPermutations);
    storeNextPermutation(currentPermutation, permutationBuffer);
  }

  return NULL;
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
    int* nextPermutation = readNextPermutation(permutationBuffer);
    if (filterNextPermutation(nextPermutation)) {
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

void* permutationStorer(void* arg) {

  for (int i = 0; true; ++i) {
    int* permutation = readNextPermutation(solutionBuffer);
    char answer[15];
    sprintf(answer, "solution %5d:", i);
    printPermutation(answer, permutation);
    free(permutation);
  }

  return NULL;
}

void printPermutation(char prefix[], int* permutation) {
  printf("\n%s ", prefix);
  for (int i = 0; i < config->numberOfQueens; ++i) {
    printf("%d", permutation[i]);
  }
  printf("\n");
}

