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

void otherStuff_SharedTypes_0_mutexDestroy_6(struct otherStuff_SharedTypes_0_A* var);

void otherStuff_SharedTypes_0_mutexInit_7(struct otherStuff_SharedTypes_0_SharedOf_A_0* var);

void otherStuff_SharedTypes_0_mutexDestroy_7(struct otherStuff_SharedTypes_0_SharedOf_A_0* var);

void otherStuff_SharedTypes_0_mutexDestroy_8(struct otherStuff_SharedTypes_0_SharedOf_A_0*** var,int32_t size_0,int32_t size_1,int32_t size_2);

void otherStuff_SharedTypes_0_mutexInit_6(struct otherStuff_SharedTypes_0_A* var);

void otherStuff_SharedTypes_0_mutexInit_8(struct otherStuff_SharedTypes_0_SharedOf_A_0*** var,int32_t size_0,int32_t size_1,int32_t size_2);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
