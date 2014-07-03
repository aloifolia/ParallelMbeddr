#ifndef GENERICSHAREDDECLARATIONS_H
#define GENERICSHAREDDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct GenericSharedDeclarations_SharedOf_long_double_0 {
  pthread_mutex_t mutex;
  long double value;
};

struct GenericSharedDeclarations_SharedOf_uint32_0 {
  pthread_mutex_t mutex;
  uint32_t value;
};

extern pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_destroyMutex_0(pthread_mutex_t* mutex);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
