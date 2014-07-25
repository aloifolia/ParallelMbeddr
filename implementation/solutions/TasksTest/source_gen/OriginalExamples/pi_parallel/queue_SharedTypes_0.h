#ifndef QUEUE_SHAREDTYPES_0_H
#define QUEUE_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct queue_SharedTypes_0_Queue queue_SharedTypes_0_Queue_t;
struct queue_SharedTypes_0_Queue {
  int32_t insertAt;
  int32_t deleteAt;
  GenericSharedDeclarations_SharedOf_long_double_0_t data[10];
};

typedef struct queue_SharedTypes_0_SharedOf_Queue_0 queue_SharedTypes_0_SharedOf_Queue_0_t;
struct queue_SharedTypes_0_SharedOf_Queue_0 {
  pthread_mutex_t mutex;
  queue_SharedTypes_0_Queue_t value;
};

void queue_SharedTypes_0_mutexInit_2(queue_SharedTypes_0_SharedOf_Queue_0_t* var);

void queue_SharedTypes_0_mutexInit_1(queue_SharedTypes_0_Queue_t* var);

void queue_SharedTypes_0_mutexDestroy_1(queue_SharedTypes_0_Queue_t* var);

void queue_SharedTypes_0_mutexDestroy_2(queue_SharedTypes_0_SharedOf_Queue_0_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
