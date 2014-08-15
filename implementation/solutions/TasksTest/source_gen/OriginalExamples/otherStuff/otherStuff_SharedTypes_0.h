#ifndef OTHERSTUFF_SHAREDTYPES_0_H
#define OTHERSTUFF_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include "second.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct otherStuff_SharedTypes_0_B otherStuff_SharedTypes_0_B_t;
struct otherStuff_SharedTypes_0_B {
  second_X_t myX;
};

typedef struct otherStuff_SharedTypes_0_SharedOf_B_0 otherStuff_SharedTypes_0_SharedOf_B_0_t;
struct otherStuff_SharedTypes_0_SharedOf_B_0 {
  pthread_mutex_t mutex;
  otherStuff_SharedTypes_0_B_t value;
};

typedef struct otherStuff_SharedTypes_0_A otherStuff_SharedTypes_0_A_t;
struct otherStuff_SharedTypes_0_A {
  otherStuff_SharedTypes_0_SharedOf_B_0_t b;
};

typedef struct otherStuff_SharedTypes_0_SharedOf_A_0 otherStuff_SharedTypes_0_SharedOf_A_0_t;
struct otherStuff_SharedTypes_0_SharedOf_A_0 {
  pthread_mutex_t mutex;
  otherStuff_SharedTypes_0_A_t value;
};

void otherStuff_SharedTypes_0_mutexInit_8(otherStuff_SharedTypes_0_SharedOf_A_0_t*** var, int32_t size_0, int32_t size_1, int32_t size_2);

void otherStuff_SharedTypes_0_mutexInit_6(otherStuff_SharedTypes_0_A_t* var);

void otherStuff_SharedTypes_0_mutexDestroy_7(otherStuff_SharedTypes_0_SharedOf_A_0_t* var);

void otherStuff_SharedTypes_0_mutexDestroy_8(otherStuff_SharedTypes_0_SharedOf_A_0_t*** var, int32_t size_0, int32_t size_1, int32_t size_2);

void otherStuff_SharedTypes_0_mutexInit_7(otherStuff_SharedTypes_0_SharedOf_A_0_t* var);

void otherStuff_SharedTypes_0_mutexDestroy_6(otherStuff_SharedTypes_0_A_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
