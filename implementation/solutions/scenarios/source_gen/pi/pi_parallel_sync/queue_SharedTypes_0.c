#include "queue_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"

void queue_SharedTypes_0_mutexDestroy_2(queue_SharedTypes_0_SharedOf_Queue_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  queue_SharedTypes_0_mutexDestroy_1(&var->value);
}

void queue_SharedTypes_0_mutexInit_1(queue_SharedTypes_0_Queue_t* var) 
{
  GenericSharedDeclarations_mutexInit_0(((GenericSharedDeclarations_SharedOf_long_double_0_t*)(var->data)), 10);
}

void queue_SharedTypes_0_mutexInit_2(queue_SharedTypes_0_SharedOf_Queue_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  queue_SharedTypes_0_mutexInit_1(&var->value);
}

void queue_SharedTypes_0_mutexDestroy_1(queue_SharedTypes_0_Queue_t* var) 
{
  GenericSharedDeclarations_mutexDestroy_0(((GenericSharedDeclarations_SharedOf_long_double_0_t*)(var->data)), 10);
}

