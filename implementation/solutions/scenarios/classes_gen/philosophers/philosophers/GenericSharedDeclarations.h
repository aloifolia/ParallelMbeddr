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

typedef struct GenericSharedDeclarations_SharedOf_int32_0 GenericSharedDeclarations_SharedOf_int32_0_t;
struct GenericSharedDeclarations_SharedOf_int32_0 {
  pthread_mutex_t mutex;
  int32_t value;
};

extern pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexDestroy_1(GenericSharedDeclarations_SharedOf_int32_0_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexInit_1(GenericSharedDeclarations_SharedOf_int32_0_t* var, int32_t size_0);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
