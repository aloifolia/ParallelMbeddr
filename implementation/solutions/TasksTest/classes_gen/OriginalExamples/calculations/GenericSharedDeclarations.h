#ifndef GENERICSHAREDDECLARATIONS_H
#define GENERICSHAREDDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct GenericSharedDeclarations_SharedOf_Block_0 {
  pthread_mutex_t mutex;
  int32_t value[500];
};

struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0 {
  pthread_mutex_t mutex;
  int32_t value[500];
};

struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0 {
  pthread_mutex_t mutex;
  struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0 value[100];
};

extern pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexInit_0(struct GenericSharedDeclarations_SharedOf_Block_0* var,int32_t size_0);

void GenericSharedDeclarations_mutexInit_2(struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* var,int32_t size_0);

void GenericSharedDeclarations_mutexDestroy_0(struct GenericSharedDeclarations_SharedOf_Block_0* var,int32_t size_0);

void GenericSharedDeclarations_mutexDestroy_3(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0* var);

void GenericSharedDeclarations_mutexDestroy_2(struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* var,int32_t size_0);

void GenericSharedDeclarations_mutexInit_3(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
