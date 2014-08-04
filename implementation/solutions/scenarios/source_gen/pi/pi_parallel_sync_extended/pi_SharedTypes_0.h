#ifndef PI_SHAREDTYPES_0_H
#define PI_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include "queue_SharedTypes_0.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct pi_SharedTypes_0_FlaggedQueue pi_SharedTypes_0_FlaggedQueue_t;
struct pi_SharedTypes_0_FlaggedQueue {
  GenericSharedDeclarations_SharedOf_int32_0_t itemCount;
  queue_SharedTypes_0_SharedOf_Queue_0_t queue;
  GenericSharedDeclarations_SharedOf_boolean_0_t isFull;
  GenericSharedDeclarations_SharedOf_boolean_0_t isFinished;
};

typedef struct pi_SharedTypes_0_SharedOf_FlaggedQueue_0 pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t;
struct pi_SharedTypes_0_SharedOf_FlaggedQueue_0 {
  pthread_mutex_t mutex;
  pi_SharedTypes_0_FlaggedQueue_t value;
};

typedef struct pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0 pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t;
struct pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0 {
  pthread_mutex_t mutex;
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t value[2];
};

void pi_SharedTypes_0_mutexInit_3(pi_SharedTypes_0_FlaggedQueue_t* var);

void pi_SharedTypes_0_mutexDestroy_3(pi_SharedTypes_0_FlaggedQueue_t* var);

void pi_SharedTypes_0_mutexDestroy_6(pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* var);

void pi_SharedTypes_0_mutexDestroy_5(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* var, int32_t size_0);

void pi_SharedTypes_0_mutexDestroy_4(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* var);

void pi_SharedTypes_0_mutexInit_5(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* var, int32_t size_0);

void pi_SharedTypes_0_mutexInit_6(pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* var);

void pi_SharedTypes_0_mutexInit_4(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
