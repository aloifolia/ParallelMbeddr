#ifndef QUEUE_SHAREDTYPES_0_H
#define QUEUE_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct queue_SharedTypes_0_Queue {
  int32_t insertAt;
  int32_t deleteAt;
  struct GenericSharedDeclarations_SharedOf_long_double_0 data[10];
  double data2[10];
};

struct queue_SharedTypes_0_SharedOf_Queue_0 {
  pthread_mutex_t mutex;
  struct queue_SharedTypes_0_Queue value;
};

void queue_SharedTypes_0_mutexInit_1(struct queue_SharedTypes_0_Queue* var);

void queue_SharedTypes_0_mutexInit_2(struct queue_SharedTypes_0_SharedOf_Queue_0* var);

void queue_SharedTypes_0_mutexDestroy_2(struct queue_SharedTypes_0_SharedOf_Queue_0* var);

void queue_SharedTypes_0_mutexDestroy_1(struct queue_SharedTypes_0_Queue* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
