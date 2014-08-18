#include "philosophers_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"

void philosophers_SharedTypes_0_mutexInit_0(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    pthread_mutex_init(&var[__i_0].mutex,&GenericSharedDeclarations_mutexAttribute_0);
  }
}

void philosophers_SharedTypes_0_mutexDestroy_0(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    pthread_mutex_destroy(&var[__i_0].mutex);
  }
}

