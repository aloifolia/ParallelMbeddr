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

typedef struct quicksort_SharedTypes_0_Generic quicksort_SharedTypes_0_Generic_t;
struct quicksort_SharedTypes_0_Generic {
  int32_t value;
};

typedef struct quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0 quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t;
struct quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0 {
  pthread_mutex_t mutex;
  quicksort_SharedTypes_0_Generic_t value[200];
};


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
