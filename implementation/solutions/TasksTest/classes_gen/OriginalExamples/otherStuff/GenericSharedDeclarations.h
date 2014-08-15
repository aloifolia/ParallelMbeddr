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

typedef struct GenericSharedDeclarations_SharedOf_ArrayOf_ArrayOf_int32_0 GenericSharedDeclarations_SharedOf_ArrayOf_ArrayOf_int32_0_t;
struct GenericSharedDeclarations_SharedOf_ArrayOf_ArrayOf_int32_0 {
  pthread_mutex_t mutex;
  int32_t value[1][2];
};

typedef struct GenericSharedDeclarations_SharedOf_int32_0 GenericSharedDeclarations_SharedOf_int32_0_t;
struct GenericSharedDeclarations_SharedOf_int32_0 {
  pthread_mutex_t mutex;
  int32_t value;
};

typedef struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1 GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1_t;
struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1 {
  pthread_mutex_t mutex;
  GenericSharedDeclarations_SharedOf_int32_0_t value[5];
};

typedef struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0 GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0_t;
struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0 {
  pthread_mutex_t mutex;
  GenericSharedDeclarations_SharedOf_int32_0_t value[3];
};

typedef struct GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0 GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0_t;
struct GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0 {
  pthread_mutex_t mutex;
  GenericSharedDeclarations_SharedOf_int32_0_t value;
};

extern pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexInit_1(GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0_t** var, int32_t size_0, int32_t size_1);

void GenericSharedDeclarations_mutexInit_4(GenericSharedDeclarations_SharedOf_int32_0_t** var, int32_t size_0, int32_t size_1);

void GenericSharedDeclarations_mutexInit_3(GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1_t* var);

void GenericSharedDeclarations_mutexDestroy_5(GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0_t* var);

void GenericSharedDeclarations_mutexInit_0(GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0_t* var);

void GenericSharedDeclarations_mutexDestroy_1(GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0_t** var, int32_t size_0, int32_t size_1);

void GenericSharedDeclarations_mutexDestroy_2(GenericSharedDeclarations_SharedOf_int32_0_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexInit_5(GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0_t* var);

void GenericSharedDeclarations_mutexDestroy_4(GenericSharedDeclarations_SharedOf_int32_0_t** var, int32_t size_0, int32_t size_1);

void GenericSharedDeclarations_mutexDestroy_3(GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1_t* var);

void GenericSharedDeclarations_mutexInit_2(GenericSharedDeclarations_SharedOf_int32_0_t* var, int32_t size_0);

void GenericSharedDeclarations_mutexDestroy_0(GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
