#include "queue_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"

void queue_SharedTypes_0_mutexInit_2(struct queue_SharedTypes_0_SharedOf_Queue_0* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  queue_SharedTypes_0_mutexInit_1(&var->value);
}


void queue_SharedTypes_0_mutexDestroy_2(struct queue_SharedTypes_0_SharedOf_Queue_0* var) 
{
  pthread_mutex_destroy(&var->mutex);
  queue_SharedTypes_0_mutexInit_1(&var->value);
}


void queue_SharedTypes_0_mutexInit_1(struct queue_SharedTypes_0_Queue* var) 
{
  GenericSharedDeclarations_mutexInit_0(((struct GenericSharedDeclarations_SharedOf_long_double_0*)(var->data)), 10);
}


void queue_SharedTypes_0_mutexDestroy_1(struct queue_SharedTypes_0_Queue* var) 
{
  GenericSharedDeclarations_mutexInit_0(((struct GenericSharedDeclarations_SharedOf_long_double_0*)(var->data)), 10);
}


