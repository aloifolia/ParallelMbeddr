#include "otherStuff_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"
#include "second.h"

void otherStuff_SharedTypes_0_mutexInit_4(struct otherStuff_SharedTypes_0_A* var) 
{
  pthread_mutex_init(&var->b.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}


void otherStuff_SharedTypes_0_mutexInit_6(struct otherStuff_SharedTypes_0_SharedOf_A_0*** var, int32_t size_0, int32_t size_1, int32_t size_2) 
{
  for ( int32_t __i_3 = 0; __i_3 < size_0; __i_3++ )
  {
    for ( int32_t __i_4 = 0; __i_4 < size_1; __i_4++ )
    {
      for ( int32_t __i_5 = 0; __i_5 < size_2; __i_5++ )
      {
        otherStuff_SharedTypes_0_mutexInit_5(&var[__i_3][__i_4][__i_5]);
      }

    }

  }

}


void otherStuff_SharedTypes_0_mutexDestroy_5(struct otherStuff_SharedTypes_0_SharedOf_A_0* var) 
{
  pthread_mutex_destroy(&var->mutex);
  otherStuff_SharedTypes_0_mutexInit_4(&var->value);
}


void otherStuff_SharedTypes_0_mutexInit_5(struct otherStuff_SharedTypes_0_SharedOf_A_0* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  otherStuff_SharedTypes_0_mutexInit_4(&var->value);
}


void otherStuff_SharedTypes_0_mutexDestroy_6(struct otherStuff_SharedTypes_0_SharedOf_A_0*** var, int32_t size_0, int32_t size_1, int32_t size_2) 
{
  for ( int32_t __i_3 = 0; __i_3 < size_0; __i_3++ )
  {
    for ( int32_t __i_4 = 0; __i_4 < size_1; __i_4++ )
    {
      for ( int32_t __i_5 = 0; __i_5 < size_2; __i_5++ )
      {
        otherStuff_SharedTypes_0_mutexInit_5(&var[__i_3][__i_4][__i_5]);
      }

    }

  }

}


void otherStuff_SharedTypes_0_mutexDestroy_4(struct otherStuff_SharedTypes_0_A* var) 
{
  pthread_mutex_destroy(&var->b.mutex);
}


