#ifndef GENERICSHAREDDECLARATIONS_H
#define GENERICSHAREDDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct GenericSharedDeclarations_SharedOf_int32_0 {
  pthread_mutex_t mutex;
  int32_t value;
};

struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0 {
  pthread_mutex_t mutex;
  struct GenericSharedDeclarations_SharedOf_int32_0 value[2];
};

struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1 {
  pthread_mutex_t mutex;
  struct GenericSharedDeclarations_SharedOf_int32_0 value[5];
};

extern pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexDestroy_3(struct GenericSharedDeclarations_SharedOf_int32_0** var,int32_t size_0,int32_t size_1);

void GenericSharedDeclarations_mutexInit_0(struct GenericSharedDeclarations_SharedOf_int32_0* var,int32_t size_0);

void GenericSharedDeclarations_mutexInit_1(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0* var);

void GenericSharedDeclarations_mutexDestroy_1(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0* var);

void GenericSharedDeclarations_mutexInit_3(struct GenericSharedDeclarations_SharedOf_int32_0** var,int32_t size_0,int32_t size_1);

void GenericSharedDeclarations_mutexInit_2(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1* var);

void GenericSharedDeclarations_mutexDestroy_2(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1* var);

void GenericSharedDeclarations_mutexDestroy_0(struct GenericSharedDeclarations_SharedOf_int32_0* var,int32_t size_0);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
