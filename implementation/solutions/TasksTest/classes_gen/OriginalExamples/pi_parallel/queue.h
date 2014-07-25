#ifndef QUEUE_H
#define QUEUE_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include "queue_SharedTypes_0.h"



#ifdef __cplusplus
extern "C" {
#endif

#define QUEUE_QUEUESIZE (10)
void queue_queueInit(queue_SharedTypes_0_SharedOf_Queue_0_t* queue);

void queue_queueSafeAdd(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, long double item);

void queue_queueSafeGet(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, long double* result);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
