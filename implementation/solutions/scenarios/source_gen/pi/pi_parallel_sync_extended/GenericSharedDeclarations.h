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

typedef struct GenericSharedDeclarations_SharedOf_uint32_0 GenericSharedDeclarations_SharedOf_uint32_0_t;
struct GenericSharedDeclarations_SharedOf_uint32_0 {
  pthread_mutex_t mutex;
  uint32_t value;
};

typedef struct GenericSharedDeclarations_SharedOf_boolean_0 GenericSharedDeclarations_SharedOf_boolean_0_t;
struct GenericSharedDeclarations_SharedOf_boolean_0 {
  pthread_mutex_t mutex;
  bool value;
};

typedef struct GenericSharedDeclarations_SharedOf_long_double_0 GenericSharedDeclarations_SharedOf_long_double_0_t;
struct GenericSharedDeclarations_SharedOf_long_double_0 {
  pthread_mutex_t mutex;
  long double value;
};

extern pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexDestroy_0(GenericSharedDeclarations_SharedOf_long_double_0_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexInit_0(GenericSharedDeclarations_SharedOf_long_double_0_t* var, int32_t size_0);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
