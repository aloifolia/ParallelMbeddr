#include "GenericSharedDeclarations.h"


#include "GenericSyncDeclarations.h"

pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexInit_0(GenericSharedDeclarations_SharedOf_int32_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    pthread_mutex_init(&var[__i_0].mutex,&GenericSharedDeclarations_mutexAttribute_0);
  }
}

void GenericSharedDeclarations_mutexDestroy_0(GenericSharedDeclarations_SharedOf_int32_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    pthread_mutex_destroy(&var[__i_0].mutex);
  }
}

