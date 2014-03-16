/*
 * nqueens_safe_plain_c.h
 *
 *  Created on: 03.02.2014
 *      Author: bastian
 */

#ifndef NQUEENS_H_
#define NQUEENS_H_
#include <stdbool.h>

void runThreads();
void* permutationGenerator(void* arg);
void* permutationFilter(void* arg);
void* permutationStorer(void* arg);
bool permutable(int* permutation);
int* permute(int* currentPermutation);
void swap(int* permutation, int i, int j);
bool filterNextPermutation(int* nextPermutation);
void printPermutation(char prefix[], int* permutation);

#endif /* NQUEENS_H_ */
