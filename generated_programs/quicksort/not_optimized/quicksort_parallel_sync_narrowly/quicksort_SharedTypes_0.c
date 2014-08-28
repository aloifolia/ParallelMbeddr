#include "quicksort_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"

void quicksort_SharedTypes_0_mutexDestroy_0(quicksort_SharedTypes_0_SharedOf_Item_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    pthread_mutex_destroy(&var[__i_0].mutex);
  }
}

void quicksort_SharedTypes_0_mutexInit_1(quicksort_SharedTypes_0_SharedOf_ArrayOf_SharedOf_Item_0_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  quicksort_SharedTypes_0_mutexInit_0(((quicksort_SharedTypes_0_SharedOf_Item_0_t*)(var->value)), 20000);
}

void quicksort_SharedTypes_0_mutexDestroy_1(quicksort_SharedTypes_0_SharedOf_ArrayOf_SharedOf_Item_0_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  quicksort_SharedTypes_0_mutexDestroy_0(((quicksort_SharedTypes_0_SharedOf_Item_0_t*)(var->value)), 20000);
}

void quicksort_SharedTypes_0_mutexInit_0(quicksort_SharedTypes_0_SharedOf_Item_0_t* var, int32_t size_0) 
{
  for ( int32_t __i_0 = 0; __i_0 < size_0; __i_0++ )
  {
    pthread_mutex_init(&var[__i_0].mutex,&GenericSharedDeclarations_mutexAttribute_0);
  }
}

