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

typedef struct quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0 quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t;
struct quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0 {
  pthread_mutex_t mutex;
  quicksort_SharedTypes_0_Item_t value[100];
};


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
