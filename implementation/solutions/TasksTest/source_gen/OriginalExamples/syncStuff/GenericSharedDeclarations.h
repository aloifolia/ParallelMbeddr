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

struct GenericSharedDeclarations_SharedOf_PointerOf_SharedOf_int32_0_0 {
  pthread_mutex_t mutex;
  struct GenericSharedDeclarations_SharedOf_int32_0* value;
};

struct GenericSharedDeclarations_SharedOf_APrime_0 {
  pthread_mutex_t mutex;
  struct GenericSharedDeclarations_SharedOf_int32_0* value;
};

extern pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
