#include "readerData_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"

void readerData_SharedTypes_0_mutexDestroy_4(struct readerData_SharedTypes_0_SharedOf_Data_0* var) 
{
  pthread_mutex_destroy(&var->mutex);
  readerData_SharedTypes_0_mutexDestroy_1(&var->value);
}


void readerData_SharedTypes_0_mutexInit_1(struct readerData_SharedTypes_0_Data* var) 
{
  GenericSharedDeclarations_mutexInit_0(((struct GenericSharedDeclarations_SharedOf_Block_0*)(var->blocks)), 100);
}


void readerData_SharedTypes_0_mutexInit_4(struct readerData_SharedTypes_0_SharedOf_Data_0* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  readerData_SharedTypes_0_mutexInit_1(&var->value);
}


void readerData_SharedTypes_0_mutexDestroy_1(struct readerData_SharedTypes_0_Data* var) 
{
  GenericSharedDeclarations_mutexDestroy_0(((struct GenericSharedDeclarations_SharedOf_Block_0*)(var->blocks)), 100);
}


