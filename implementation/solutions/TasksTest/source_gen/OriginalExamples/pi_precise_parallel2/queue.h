#ifndef QUEUE_H
#define QUEUE_H


#include <stdint.h>

#include <stddef.h>

#include <stdio.h>
#include <gmp.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include "queue_SharedTypes_0.h"



#ifdef __cplusplus
extern "C" {
#endif

#define QUEUE_QUEUESIZE (10)
void queue_queueInit(struct queue_SharedTypes_0_SharedOf_Queue_0* queue);

void queue_queueClear(struct queue_SharedTypes_0_SharedOf_Queue_0* queue);

void queue_queueSafeAdd(struct queue_SharedTypes_0_SharedOf_Queue_0* queue,mpf_t item);

void queue_queueSafeGet(struct queue_SharedTypes_0_SharedOf_Queue_0* queue,mpf_t result);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
