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

typedef struct syncStuff_SharedTypes_0_ArrayContainer syncStuff_SharedTypes_0_ArrayContainer_t;
struct syncStuff_SharedTypes_0_ArrayContainer {
  int32_t val[5];
};

typedef struct syncStuff_SharedTypes_0_SharedContainer syncStuff_SharedTypes_0_SharedContainer_t;
struct syncStuff_SharedTypes_0_SharedContainer {
  GenericSharedDeclarations_SharedOf_int32_0_t i;
};

typedef struct syncStuff_SharedTypes_0_SharedOf_ArrayOf_ArrayContainer_0 syncStuff_SharedTypes_0_SharedOf_ArrayOf_ArrayContainer_0_t;
struct syncStuff_SharedTypes_0_SharedOf_ArrayOf_ArrayContainer_0 {
  pthread_mutex_t mutex;
  syncStuff_SharedTypes_0_ArrayContainer_t value[5];
};

typedef struct syncStuff_SharedTypes_0_ArrayContainerContainer syncStuff_SharedTypes_0_ArrayContainerContainer_t;
struct syncStuff_SharedTypes_0_ArrayContainerContainer {
  syncStuff_SharedTypes_0_SharedOf_ArrayOf_ArrayContainer_0_t a;
};

void syncStuff_SharedTypes_0_mutexInit_0(syncStuff_SharedTypes_0_SharedContainer_t* var);

void syncStuff_SharedTypes_0_mutexDestroy_0(syncStuff_SharedTypes_0_SharedContainer_t* var);

void syncStuff_SharedTypes_0_mutexInit_1(syncStuff_SharedTypes_0_ArrayContainerContainer_t* var);

void syncStuff_SharedTypes_0_mutexDestroy_1(syncStuff_SharedTypes_0_ArrayContainerContainer_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
