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

typedef struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0 GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t;
struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0 {
  pthread_mutex_t mutex;
  int32_t value[500];
};

typedef struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0 GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0_t;
struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0 {
  pthread_mutex_t mutex;
  GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t value[100];
};

extern pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexInit_0(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexDestroy_0(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexDestroy_1(GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0_t* var);

void GenericSharedDeclarations_mutexInit_1(GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
