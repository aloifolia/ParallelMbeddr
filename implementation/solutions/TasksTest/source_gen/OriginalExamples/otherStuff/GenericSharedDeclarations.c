#include "GenericSharedDeclarations.h"


#include "GenericSyncDeclarations.h"

pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_mutexDestroy_3(struct GenericSharedDeclarations_SharedOf_int32_0** var, int32_t size_0, int32_t size_1) 
{
  for ( int32_t __i_1 = 0; __i_1 < size_0; __i_1++ )
  {
    for ( int32_t __i_2 = 0; __i_2 < size_1; __i_2++ )
    {
      pthread_mutex_destroy(&var[__i_1][__i_2].mutex);
    }

  }

}


void GenericSharedDeclarations_mutexInit_0(struct GenericSharedDeclarations_SharedOf_int32_0* var, int32_t size_0) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    pthread_mutex_init(&var[__i_0].mutex,&GenericSharedDeclarations_mutexAttribute_0);
  }

}


void GenericSharedDeclarations_mutexInit_1(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_mutexInit_0(((struct GenericSharedDeclarations_SharedOf_int32_0*)(var->value)), 2);
}


void GenericSharedDeclarations_mutexDestroy_1(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0* var) 
{
  pthread_mutex_destroy(&var->mutex);
  GenericSharedDeclarations_mutexInit_0(((struct GenericSharedDeclarations_SharedOf_int32_0*)(var->value)), 2);
}


void GenericSharedDeclarations_mutexInit_3(struct GenericSharedDeclarations_SharedOf_int32_0** var, int32_t size_0, int32_t size_1) 
{
  for ( int32_t __i_1 = 0; __i_1 < size_0; __i_1++ )
  {
    for ( int32_t __i_2 = 0; __i_2 < size_1; __i_2++ )
    {
      pthread_mutex_init(&var[__i_1][__i_2].mutex,&GenericSharedDeclarations_mutexAttribute_0);
    }

  }

}


void GenericSharedDeclarations_mutexInit_2(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_mutexInit_0(((struct GenericSharedDeclarations_SharedOf_int32_0*)(var->value)), 5);
}


void GenericSharedDeclarations_mutexDestroy_2(struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1* var) 
{
  pthread_mutex_destroy(&var->mutex);
  GenericSharedDeclarations_mutexInit_0(((struct GenericSharedDeclarations_SharedOf_int32_0*)(var->value)), 5);
}


void GenericSharedDeclarations_mutexDestroy_0(struct GenericSharedDeclarations_SharedOf_int32_0* var, int32_t size_0) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    pthread_mutex_destroy(&var[__i_0].mutex);
  }

}


