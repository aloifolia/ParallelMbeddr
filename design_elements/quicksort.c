/*

 * quicksort.c
 *
 *  Created on: 07.02.2014
 *      Author: bastian
 */

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <pthread.h>

typedef struct {
	int* array;
	int left;
	int right;
} SortParameters;

typedef struct {
	int lengthOfArray;
	int arrayThreshold;
} Configuration;

typedef void (*InitSort)(SortParameters*, SortParameters*);

void initSorting();
void fillArray(int* array);
void printArray(char kind[], int* array);
InitSort sortingFuncByBounds(int left, int middle, int right);
void initSubSort(SortParameters* args1, SortParameters* args2);
void initParallelSubSort(SortParameters* args1, SortParameters* args2);
void* quickSort(void* args);
int partition(SortParameters* args);
void swap(int* array, int i, int j);

Configuration* config;

int main(int argc, char* argv[]) {
	if (argc != 3) {
		printf(
		    "\nusage: quicksort [length of array] [array threshold for parallelization]\n\n");
		exit(1);
	}

	config = malloc(sizeof(Configuration));
	config->lengthOfArray = atoi(argv[1]);
	config->arrayThreshold = atoi(argv[2]);

	initSorting();
	free(config);
	return 0;
}

inline void initSorting() {
	int* array = malloc(config->lengthOfArray * sizeof(int*));
	fillArray(array);

//	printArray("Unsorted", array);
	SortParameters* args = malloc(sizeof(SortParameters));
	args->array = array;
	args->left = 0;
	args->right = config->lengthOfArray - 1;

	quickSort(args);
//	printArray("Unsorted", array);
	free(array);
}

inline void fillArray(int* array) {
	for (int i = 0; i < config->lengthOfArray; ++i) {
		array[i] = rand();
	}
}

void printArray(char kind[], int* array) {
	printf("\n\n%s array is:  ", kind);
	for (int i = 0; i < config->lengthOfArray; ++i) {
		printf("\n%6d | %10d ", i, array[i]);
	}
	printf("\n");
}

inline InitSort sortingFuncByBounds(int left, int middle, int right) {
	if (middle - left > config->arrayThreshold
	    && right - middle > config->arrayThreshold) {
		return &initParallelSubSort;
	}
	return &initSubSort;
}

inline void initSubSort(SortParameters* args1, SortParameters* args2) {
	quickSort(args1);
	quickSort(args2);
}

inline void initParallelSubSort(SortParameters* args1, SortParameters* args2) {
	printf("parallel quicksort...\n");
	Task<void> subSorter1 = |quickSort(args1)|;
	Task<void> subSorter2 = |quickSort(args2)|;
	run subSorter1;
	run subSorter2;
	join subSorter1Running;
	join subSorter2Running;
	/* alternatively: 
	 * run, join |quickSort(args1)|;
	 */
	/* alternatively: method syntax
	 * |quickSort(args1)|.run().join();
	 */
	/* alternatively: emphasize that run and join are no real methods
	 * |quickSort(args1)|:run:join;
	 */
}

// no void* necessary here: return value and arguments
void quickSort(SortParameters* args) {
	if (args->left < args->right) {
		// divide and...
		int middle = partition(args);
		InitSort initSortingFunc = sortingFuncByBounds(args->left, middle, args->right);

		SortParameters* argsSub1 = malloc(sizeof(SortParameters));
		argsSub1->array = args->array;
		argsSub1->left = args->left;
		argsSub1->right = middle - 1;

		SortParameters* argsSub2 = malloc(sizeof(SortParameters));
		argsSub2->array = args->array;
		argsSub2->left = middle + 1;
		argsSub2->right = args->right;

		// ...conquer
		initSortingFunc(argsSub1, argsSub2);
	}

	free(args);
}

int partition(SortParameters* args) {
  // no sync necessary (the programmer knows that the accesses to array are not overlapping)
	int pivot = args->array[args->left];
	int i = args->left;
	int j = args->right + 1;

	while (true) {
		do
			++i;
		while (args->array[i] <= pivot && i <= args->right);
		do
			--j;
		while (args->array[j] > pivot);
		if (i >= j)
			break;
		swap(args->array, i, j);
	}
	if (args->left != j) {
		swap(args->array, args->left, j);
	}
	return j;
}

inline void swap(int* array, int i, int j) {
	int temp = array[i];
	array[i] = array[j];
	array[j] = temp;
}
