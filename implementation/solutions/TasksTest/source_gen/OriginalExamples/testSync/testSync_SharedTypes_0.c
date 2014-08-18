#include "testSync_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"

void testSync_SharedTypes_0_mutexInit_1(testSync_SharedTypes_0_SharedOf_AB_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  testSync_SharedTypes_0_mutexInit_0(&var->value);
}

void testSync_SharedTypes_0_mutexDestroy_1(testSync_SharedTypes_0_SharedOf_AB_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  testSync_SharedTypes_0_mutexDestroy_0(&var->value);
}

void testSync_SharedTypes_0_mutexDestroy_0(testSync_SharedTypes_0_AB_t* var) 
{
  pthread_mutex_destroy(&var->val2.mutex);
}

void testSync_SharedTypes_0_mutexInit_0(testSync_SharedTypes_0_AB_t* var) 
{
  pthread_mutex_init(&var->val2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

