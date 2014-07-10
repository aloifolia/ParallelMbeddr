#ifndef OTHERSTUFF_SHAREDTYPES_0_H
#define OTHERSTUFF_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSharedDeclarations.h"

#include "second.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct otherStuff_SharedTypes_0_B {
  struct second_X myX;
};

struct otherStuff_SharedTypes_0_SharedOf_B_0 {
  pthread_mutex_t mutex;
  struct otherStuff_SharedTypes_0_B value;
};

struct otherStuff_SharedTypes_0_A {
  struct otherStuff_SharedTypes_0_SharedOf_B_0 b;
};

struct otherStuff_SharedTypes_0_SharedOf_A_0 {
  pthread_mutex_t mutex;
  struct otherStuff_SharedTypes_0_A value;
};

void otherStuff_SharedTypes_0_mutexInit_1(struct otherStuff_SharedTypes_0_SharedOf_A_0* var);

void otherStuff_SharedTypes_0_mutexDestroy_0(struct otherStuff_SharedTypes_0_A* var);

void otherStuff_SharedTypes_0_mutexInit_2(struct otherStuff_SharedTypes_0_SharedOf_A_0*** var,int32_t size_0,int32_t size_1,int32_t size_2);

void otherStuff_SharedTypes_0_mutexDestroy_2(struct otherStuff_SharedTypes_0_SharedOf_A_0*** var,int32_t size_0,int32_t size_1,int32_t size_2);

void otherStuff_SharedTypes_0_mutexDestroy_1(struct otherStuff_SharedTypes_0_SharedOf_A_0* var);

void otherStuff_SharedTypes_0_mutexInit_0(struct otherStuff_SharedTypes_0_A* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
