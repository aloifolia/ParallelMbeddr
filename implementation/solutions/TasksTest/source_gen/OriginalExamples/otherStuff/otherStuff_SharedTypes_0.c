#include "otherStuff_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"
#include "second.h"

void otherStuff_SharedTypes_0_mutexInit_8(otherStuff_SharedTypes_0_SharedOf_A_0_t*** var, int32_t size_0, int32_t size_1, int32_t size_2) 
{
  for ( int32_t __i_5 = 0; __i_5 < size_0; __i_5++ )
  {
    for ( int32_t __i_6 = 0; __i_6 < size_1; __i_6++ )
    {
      for ( int32_t __i_7 = 0; __i_7 < size_2; __i_7++ )
      {
        otherStuff_SharedTypes_0_mutexInit_7(&var[__i_5][__i_6][__i_7]);
      }
    }
  }
}

void otherStuff_SharedTypes_0_mutexInit_6(otherStuff_SharedTypes_0_A_t* var) 
{
  pthread_mutex_init(&var->b.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void otherStuff_SharedTypes_0_mutexDestroy_7(otherStuff_SharedTypes_0_SharedOf_A_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  otherStuff_SharedTypes_0_mutexDestroy_6(&var->value);
}

void otherStuff_SharedTypes_0_mutexDestroy_8(otherStuff_SharedTypes_0_SharedOf_A_0_t*** var, int32_t size_0, int32_t size_1, int32_t size_2) 
{
  for ( int32_t __i_5 = 0; __i_5 < size_0; __i_5++ )
  {
    for ( int32_t __i_6 = 0; __i_6 < size_1; __i_6++ )
    {
      for ( int32_t __i_7 = 0; __i_7 < size_2; __i_7++ )
      {
        otherStuff_SharedTypes_0_mutexDestroy_7(&var[__i_5][__i_6][__i_7]);
      }
    }
  }
}

void otherStuff_SharedTypes_0_mutexInit_7(otherStuff_SharedTypes_0_SharedOf_A_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  otherStuff_SharedTypes_0_mutexInit_6(&var->value);
}

void otherStuff_SharedTypes_0_mutexDestroy_6(otherStuff_SharedTypes_0_A_t* var) 
{
  pthread_mutex_destroy(&var->b.mutex);
}

