#ifndef GENERICSHAREDDECLARATIONS_H
#define GENERICSHAREDDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct GenericSharedDeclarations_SharedInt_0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  int32_t value;
};

struct GenericSharedDeclarations_SharedArrayContainer_Array_0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  struct syncStuff_ArrayContainer value[5];
};

void GenericSharedDeclarations_initMutex_0(pthread_mutexattr_t* mutexAttribute,pthread_mutex_t* mutex);

void GenericSharedDeclarations_destroyMutex_0(pthread_mutex_t* mutex);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
