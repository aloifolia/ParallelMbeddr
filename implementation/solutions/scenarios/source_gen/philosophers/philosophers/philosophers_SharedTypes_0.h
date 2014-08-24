#ifndef PHILOSOPHERS_SHAREDTYPES_0_H
#define PHILOSOPHERS_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct philosophers_SharedTypes_0_Philosopher philosophers_SharedTypes_0_Philosopher_t;
struct philosophers_SharedTypes_0_Philosopher {
  int32_t id;
  GenericSharedDeclarations_SharedOf_int32_0_t* leftFork;
  GenericSharedDeclarations_SharedOf_int32_0_t* rightFork;
};

typedef struct philosophers_SharedTypes_0_SharedOf_Philosopher_0 philosophers_SharedTypes_0_SharedOf_Philosopher_0_t;
struct philosophers_SharedTypes_0_SharedOf_Philosopher_0 {
  pthread_mutex_t mutex;
  philosophers_SharedTypes_0_Philosopher_t value;
};

void philosophers_SharedTypes_0_mutexDestroy_0(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* var, int32_t size_0);

void philosophers_SharedTypes_0_mutexInit_0(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* var, int32_t size_0);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
