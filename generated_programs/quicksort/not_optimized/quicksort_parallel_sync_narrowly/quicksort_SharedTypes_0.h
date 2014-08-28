#ifndef QUICKSORT_SHAREDTYPES_0_H
#define QUICKSORT_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct quicksort_SharedTypes_0_Item quicksort_SharedTypes_0_Item_t;
struct quicksort_SharedTypes_0_Item {
  int32_t value;
};

typedef struct quicksort_SharedTypes_0_SharedOf_Item_0 quicksort_SharedTypes_0_SharedOf_Item_0_t;
struct quicksort_SharedTypes_0_SharedOf_Item_0 {
  pthread_mutex_t mutex;
  quicksort_SharedTypes_0_Item_t value;
};

typedef struct quicksort_SharedTypes_0_SharedOf_ArrayOf_SharedOf_Item_0_0 quicksort_SharedTypes_0_SharedOf_ArrayOf_SharedOf_Item_0_0_t;
struct quicksort_SharedTypes_0_SharedOf_ArrayOf_SharedOf_Item_0_0 {
  pthread_mutex_t mutex;
  quicksort_SharedTypes_0_SharedOf_Item_0_t value[20000];
};

void quicksort_SharedTypes_0_mutexDestroy_0(quicksort_SharedTypes_0_SharedOf_Item_0_t* var, int32_t size_0);

void quicksort_SharedTypes_0_mutexInit_1(quicksort_SharedTypes_0_SharedOf_ArrayOf_SharedOf_Item_0_0_t* var);

void quicksort_SharedTypes_0_mutexDestroy_1(quicksort_SharedTypes_0_SharedOf_ArrayOf_SharedOf_Item_0_0_t* var);

void quicksort_SharedTypes_0_mutexInit_0(quicksort_SharedTypes_0_SharedOf_Item_0_t* var, int32_t size_0);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
