#include "GenericSharedDeclarations.h"


#include "GenericSyncDeclarations.h"

pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexDestroy_1(GenericSharedDeclarations_SharedOf_int32_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_1 = 0; __i_1 < size_0; __i_1++ )
  {
    pthread_mutex_destroy(&var[__i_1].mutex);
  }
}

void GenericSharedDeclarations_mutexInit_1(GenericSharedDeclarations_SharedOf_int32_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_1 = 0; __i_1 < size_0; __i_1++ )
  {
    pthread_mutex_init(&var[__i_1].mutex,&GenericSharedDeclarations_mutexAttribute_0);
  }
}

