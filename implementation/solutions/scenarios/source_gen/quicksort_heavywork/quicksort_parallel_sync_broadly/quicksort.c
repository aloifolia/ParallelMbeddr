#include "quicksort.h"


#include <stdio.h>
#include <stdlib.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "quicksort_SharedTypes_0.h"
#include <stdlib.h>

typedef struct quicksort_Args_a0b0c0a0g quicksort_Args_a0b0c0a0g_t;
struct quicksort_Args_a0b0c0a0g {
  quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics;
  int32_t left;
  int32_t middle;
};

typedef struct quicksort_Args_a0c0c0a0g quicksort_Args_a0c0c0a0g_t;
struct quicksort_Args_a0c0c0a0g {
  quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics;
  int32_t middle;
  int32_t right;
};

static void quicksort_initGenerics(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics);

static void quicksort_printGenerics(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t start, int32_t end);

static void quicksort_quickSort(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t left, int32_t right);

static int32_t quicksort_partition(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t left, int32_t right);

static bool quicksort_biggerThan(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t index1, int32_t index2);

static void quicksort_swap(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t i, int32_t j);

static void quicksort_doHeavyWork(void);

static void* quicksort_parFun_a0b0c0a0g(void* voidArgs);

static void* quicksort_parFun_a0c0c0a0g(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a6(int32_t middle, quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t left);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a2a2a0a6(int32_t middle, int32_t right, quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t generics;
  pthread_mutex_init(&generics.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* genericsPointer = &generics;
  quicksort_initGenerics(genericsPointer);
  
  
  quicksort_quickSort(genericsPointer, 0, QUICKSORT_numberOfGenerics - 1);
  
  
  return 0;
}

static void quicksort_initGenerics(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics) 
{
  for ( int16_t __i = 0; __i < QUICKSORT_numberOfGenerics; __i++ )
  {
    GenericSyncDeclarations_startSyncFor1Mutex(&generics->mutex);
    {
      generics->value[__i].value = rand();
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&generics->mutex);
  }
}

static void quicksort_printGenerics(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t start, int32_t end) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&generics->mutex);
  {
    for ( int32_t __i = start; __i < end; __i++ )
    {
      printf("%d |  %d\n", __i, generics->value[__i].value);
    }
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&generics->mutex);
}

static void quicksort_quickSort(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t left, int32_t right) 
{
  if ( left < right ) 
  {
    int32_t middle = quicksort_partition(generics, left, right);
    
    if ( middle - left > QUICKSORT_threshold && right - middle > QUICKSORT_threshold ) 
    {
      printf("multi!\n");
      GenericTaskDeclarations_VoidFuture_t sorter1 = quicksort_futureInit_a1a2a0a6(middle, generics, left);
      GenericTaskDeclarations_VoidFuture_t sorter2 = quicksort_futureInit_a2a2a0a6(middle, right, generics);
      GenericTaskDeclarations_joinVoidFuture(&sorter1);
      GenericTaskDeclarations_joinVoidFuture(&sorter2);
    }    else 
    {
      quicksort_quickSort(generics, left, middle - 1);
      quicksort_quickSort(generics, middle + 1, right);
    }
  }
}

static int32_t quicksort_partition(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t left, int32_t right) 
{
  quicksort_SharedTypes_0_Generic_t pivot;
  GenericSyncDeclarations_startSyncFor1Mutex(&generics->mutex);
  {
    pivot = generics->value[left];
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&generics->mutex);
  int32_t i = left;
  int32_t j = right + 1;
  
  while (true)
  {
    do{
      ++i;
    } while (!(quicksort_biggerThan(generics, i, left)) && i < right);
    do{
      --j;
    } while (quicksort_biggerThan(generics, j, left));
    if ( i >= j ) 
    {
      break;
    }
    quicksort_swap(generics, i, j);
  }
  
  if ( left != j ) 
  {
    quicksort_swap(generics, left, j);
  }
  return j;
}

static bool quicksort_biggerThan(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t index1, int32_t index2) 
{
  /* 
   * no noticeable sync overhead in this example since the sync overhead is dominated by
   * the not synchronized heavy work => if doHeavyWork() is moved into sync(generics) the
   * program is basically serialized => in this case apply lock narrowing to reduce the
   * lock contention
   */

  quicksort_doHeavyWork();
  GenericSyncDeclarations_startSyncFor1Mutex(&generics->mutex);
  {
    GenericSyncDeclarations_stopSyncFor1Mutex(&generics->mutex);
    return generics->value[index1].value > generics->value[index2].value;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&generics->mutex);
  return false;
}

static void quicksort_swap(quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t i, int32_t j) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&generics->mutex);
  {
    quicksort_SharedTypes_0_Generic_t temp = generics->value[i];
    generics->value[i] = generics->value[j];
    generics->value[j] = temp;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&generics->mutex);
}

static void quicksort_doHeavyWork(void) 
{
  for ( int16_t __i = 0; __i < 1000; __i++ )
  {
    for ( int16_t __j = 0; __j < 1000; __j++ )
    {
      __j * __j * __j;
    }
  }
}

static void* quicksort_parFun_a0b0c0a0g(void* voidArgs) 
{
  quicksort_Args_a0b0c0a0g_t* args = ((quicksort_Args_a0b0c0a0g_t*)(voidArgs));
  quicksort_quickSort((args)->generics, (args)->left, (args)->middle - 1);
  free(voidArgs);
  return 0;
}

static void* quicksort_parFun_a0c0c0a0g(void* voidArgs) 
{
  quicksort_Args_a0c0c0a0g_t* args = ((quicksort_Args_a0c0c0a0g_t*)(voidArgs));
  quicksort_quickSort((args)->generics, (args)->middle + 1, (args)->right);
  free(voidArgs);
  return 0;
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a6(int32_t middle, quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics, int32_t left) 
{
  quicksort_Args_a0b0c0a0g_t* args_a1a2a0a6 = malloc(sizeof(quicksort_Args_a0b0c0a0g_t));
  args_a1a2a0a6->middle = middle;
  args_a1a2a0a6->generics = generics;
  args_a1a2a0a6->left = left;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0b0c0a0g,args_a1a2a0a6);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a2a2a0a6(int32_t middle, int32_t right, quicksort_SharedTypes_0_SharedOf_ArrayOf_Generic_0_t* generics) 
{
  quicksort_Args_a0c0c0a0g_t* args_a2a2a0a6 = malloc(sizeof(quicksort_Args_a0c0c0a0g_t));
  args_a2a2a0a6->middle = middle;
  args_a2a2a0a6->generics = generics;
  args_a2a2a0a6->right = right;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0c0c0a0g,args_a2a2a0a6);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

