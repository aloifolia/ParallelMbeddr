#ifndef SYNCSTUFF_SHAREDTYPES_0_H
#define SYNCSTUFF_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct syncStuff_SharedTypes_0_SharedContainer {
  struct GenericSharedDeclarations_SharedOf_int32_0 i;
};

struct syncStuff_SharedTypes_0_ArrayContainer {
  int32_t val[5];
};

struct syncStuff_SharedTypes_0_SharedOf_ArrayOf_ArrayContainer_0 {
  pthread_mutex_t mutex;
  struct syncStuff_SharedTypes_0_ArrayContainer value[5];
};

struct syncStuff_SharedTypes_0_ArrayContainerContainer {
  struct syncStuff_SharedTypes_0_SharedOf_ArrayOf_ArrayContainer_0 a;
};

void syncStuff_SharedTypes_0_mutexInit_0(struct syncStuff_SharedTypes_0_SharedContainer* var);

void syncStuff_SharedTypes_0_mutexInit_1(struct syncStuff_SharedTypes_0_ArrayContainerContainer* var);

void syncStuff_SharedTypes_0_mutexDestroy_1(struct syncStuff_SharedTypes_0_ArrayContainerContainer* var);

void syncStuff_SharedTypes_0_mutexDestroy_0(struct syncStuff_SharedTypes_0_SharedContainer* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
