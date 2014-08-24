#ifndef GENERICSHAREDDECLARATIONS_H
#define GENERICSHAREDDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_1 GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t;
struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_1 {
  pthread_mutex_t mutex;
  int32_t value[1];
};

typedef struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0 GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t;
struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0 {
  pthread_mutex_t mutex;
  int32_t value[5];
};

typedef struct GenericSharedDeclarations_SharedOf_int32_0 GenericSharedDeclarations_SharedOf_int32_0_t;
struct GenericSharedDeclarations_SharedOf_int32_0 {
  pthread_mutex_t mutex;
  int32_t value;
};

extern pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexDestroy_12(GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexInit_8(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexInit_12(GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexDestroy_8(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexInit_3(GenericSharedDeclarations_SharedOf_int32_0_t*** var, int32_t size_0, int32_t size_1, int32_t size_2);

void GenericSharedDeclarations_mutexDestroy_3(GenericSharedDeclarations_SharedOf_int32_0_t*** var, int32_t size_0, int32_t size_1, int32_t size_2);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
