#ifndef SYNCSTUFF_SHAREDTYPES_0_H
#define SYNCSTUFF_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct syncStuff_SharedTypes_0_A syncStuff_SharedTypes_0_A_t;
struct syncStuff_SharedTypes_0_A {
  GenericSharedDeclarations_SharedOf_int32_0_t* val;
};

typedef struct syncStuff_SharedTypes_0_SharedOf_A_0 syncStuff_SharedTypes_0_SharedOf_A_0_t;
struct syncStuff_SharedTypes_0_SharedOf_A_0 {
  pthread_mutex_t mutex;
  syncStuff_SharedTypes_0_A_t value;
};


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
