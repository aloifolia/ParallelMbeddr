#include "GenericSharedDeclarations.h"


#include "GenericSyncDeclarations.h"

pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexDestroy_12(GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t* var, int32_t size_0) 
{
  for ( int32_t __i_5 = 0; __i_5 < size_0; __i_5++ )
  {
    pthread_mutex_destroy(&var[__i_5].mutex);
  }
}

void GenericSharedDeclarations_mutexInit_8(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_4 = 0; __i_4 < size_0; __i_4++ )
  {
    pthread_mutex_init(&var[__i_4].mutex,&GenericSharedDeclarations_mutexAttribute_0);
  }
}

void GenericSharedDeclarations_mutexInit_12(GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t* var, int32_t size_0) 
{
  for ( int32_t __i_5 = 0; __i_5 < size_0; __i_5++ )
  {
    pthread_mutex_init(&var[__i_5].mutex,&GenericSharedDeclarations_mutexAttribute_0);
  }
}

void GenericSharedDeclarations_mutexDestroy_8(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_4 = 0; __i_4 < size_0; __i_4++ )
  {
    pthread_mutex_destroy(&var[__i_4].mutex);
  }
}

void GenericSharedDeclarations_mutexInit_3(GenericSharedDeclarations_SharedOf_int32_0_t*** var, int32_t size_0, int32_t size_1, int32_t size_2) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    for ( int32_t __i_1 = 0; __i_1 < size_1; __i_1++ )
    {
      for ( int32_t __i_2 = 0; __i_2 < size_2; __i_2++ )
      {
        pthread_mutex_init(&var[__i_0][__i_1][__i_2].mutex,&GenericSharedDeclarations_mutexAttribute_0);
      }
    }
  }
}

void GenericSharedDeclarations_mutexDestroy_3(GenericSharedDeclarations_SharedOf_int32_0_t*** var, int32_t size_0, int32_t size_1, int32_t size_2) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    for ( int32_t __i_1 = 0; __i_1 < size_1; __i_1++ )
    {
      for ( int32_t __i_2 = 0; __i_2 < size_2; __i_2++ )
      {
        pthread_mutex_destroy(&var[__i_0][__i_1][__i_2].mutex);
      }
    }
  }
}

