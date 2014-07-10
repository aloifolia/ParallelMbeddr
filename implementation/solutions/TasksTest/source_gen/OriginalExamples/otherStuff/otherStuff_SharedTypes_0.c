#include "otherStuff_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"
#include "second.h"

void otherStuff_SharedTypes_0_mutexInit_1(struct otherStuff_SharedTypes_0_SharedOf_A_0* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  otherStuff_SharedTypes_0_mutexInit_0(&var->value);
}


void otherStuff_SharedTypes_0_mutexDestroy_0(struct otherStuff_SharedTypes_0_A* var) 
{
  pthread_mutex_destroy(&var->b.mutex);
}


void otherStuff_SharedTypes_0_mutexInit_2(struct otherStuff_SharedTypes_0_SharedOf_A_0*** var, int32_t size_0, int32_t size_1, int32_t size_2) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    for ( int32_t __i_1 = 0; __i_1 < size_1; __i_1++ )
    {
      for ( int32_t __i_2 = 0; __i_2 < size_2; __i_2++ )
      {
        otherStuff_SharedTypes_0_mutexInit_1(&var[__i_0][__i_1][__i_2]);
      }

    }

  }

}


void otherStuff_SharedTypes_0_mutexDestroy_2(struct otherStuff_SharedTypes_0_SharedOf_A_0*** var, int32_t size_0, int32_t size_1, int32_t size_2) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    for ( int32_t __i_1 = 0; __i_1 < size_1; __i_1++ )
    {
      for ( int32_t __i_2 = 0; __i_2 < size_2; __i_2++ )
      {
        otherStuff_SharedTypes_0_mutexInit_1(&var[__i_0][__i_1][__i_2]);
      }

    }

  }

}


void otherStuff_SharedTypes_0_mutexDestroy_1(struct otherStuff_SharedTypes_0_SharedOf_A_0* var) 
{
  pthread_mutex_destroy(&var->mutex);
  otherStuff_SharedTypes_0_mutexInit_0(&var->value);
}


void otherStuff_SharedTypes_0_mutexInit_0(struct otherStuff_SharedTypes_0_A* var) 
{
  pthread_mutex_init(&var->b.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}


