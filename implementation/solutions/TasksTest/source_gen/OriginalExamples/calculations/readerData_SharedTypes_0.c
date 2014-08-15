#include "readerData_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"

void readerData_SharedTypes_0_mutexDestroy_2(readerData_SharedTypes_0_Data_t* var) 
{
  GenericSharedDeclarations_mutexDestroy_0(((GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t*)(var->blocks)), 100);
}

void readerData_SharedTypes_0_mutexDestroy_3(readerData_SharedTypes_0_SharedOf_Data_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  readerData_SharedTypes_0_mutexDestroy_2(&var->value);
}

void readerData_SharedTypes_0_mutexInit_2(readerData_SharedTypes_0_Data_t* var) 
{
  GenericSharedDeclarations_mutexInit_0(((GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t*)(var->blocks)), 100);
}

void readerData_SharedTypes_0_mutexInit_3(readerData_SharedTypes_0_SharedOf_Data_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  readerData_SharedTypes_0_mutexInit_2(&var->value);
}

