#include "quicksort.h"


#include <stdio.h>
#include <stdlib.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "quicksort_SharedTypes_0.h"
#include <stdlib.h>

static quicksort_SharedTypes_0_SharedOf_ArrayOf_SharedOf_Generic_0_0_t quicksort_generics;

typedef struct quicksort_Args_a0b0c0a0h quicksort_Args_a0b0c0a0h_t;
struct quicksort_Args_a0b0c0a0h {
  int32_t left;
  int32_t middle;
};

typedef struct quicksort_Args_a0c0c0a0h quicksort_Args_a0c0c0a0h_t;
struct quicksort_Args_a0c0c0a0h {
  int32_t middle;
  int32_t right;
};

static void quicksort_initGenerics(void);

static void quicksort_printGenerics(int32_t start, int32_t end);

static void quicksort_quickSort(int32_t left, int32_t right);

static int32_t quicksort_partition(int32_t left, int32_t right);

static bool quicksort_biggerThan(int32_t index1, int32_t index2);

static bool quicksort_foo(void);

static void quicksort_swap(int32_t i, int32_t j);

static void quicksort_doHeavyWork(void);

static void* quicksort_parFun_a0b0c0a0h(void* voidArgs);

static void* quicksort_parFun_a0c0c0a0h(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a7(int32_t middle, int32_t left);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a2a2a0a7(int32_t middle, int32_t right);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  quicksort_initAllGlobalMutexes_0();
  /* 2 perfomance issues here => syncs basically unnecessary:
  1. the synchronization of the generics variable which is only used in read mode
     => causes unnecessary serialization (crucial)
  2. the synchronization of each value although every one is accessed by exactly one thread
     => causes unnecessary work (minor here, since dominated by doHeavyWork()) */
  quicksort_initGenerics();
  
  
  quicksort_quickSort(0, QUICKSORT_numberOfGenerics - 1);
  
  
  return 0;
}

static void quicksort_initGenerics(void) 
{
  for ( int16_t __i = 0; __i < QUICKSORT_numberOfGenerics; __i++ )
  {
    GenericSyncDeclarations_startSyncFor1Mutex(&quicksort_generics.mutex);
    {
      {
        quicksort_SharedTypes_0_SharedOf_Generic_0_t* genericsI = &quicksort_generics.value[__i];
        GenericSyncDeclarations_startSyncFor1Mutex(&genericsI->mutex);
        {
          genericsI->value.value = rand();
        }
        GenericSyncDeclarations_stopSyncFor1Mutex(&genericsI->mutex);
      }
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&quicksort_generics.mutex);
  }
}

static void quicksort_printGenerics(int32_t start, int32_t end) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&quicksort_generics.mutex);
  {
    for ( int32_t __i = start; __i < end; __i++ )
    {
      {
        quicksort_SharedTypes_0_SharedOf_Generic_0_t* genericsI = &quicksort_generics.value[__i];
        GenericSyncDeclarations_startSyncFor1Mutex(&genericsI->mutex);
        {
          printf("%d |  %d\n", __i, genericsI->value.value);
        }
        GenericSyncDeclarations_stopSyncFor1Mutex(&genericsI->mutex);
      }
    }
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&quicksort_generics.mutex);
}

static void quicksort_quickSort(int32_t left, int32_t right) 
{
  if ( left < right ) 
  {
    int32_t middle = quicksort_partition(left, right);
    
    if ( middle - left > QUICKSORT_threshold && right - middle > QUICKSORT_threshold ) 
    {
      printf("multi!\n");
      GenericTaskDeclarations_VoidFuture_t sorter1 = quicksort_futureInit_a1a2a0a7(middle, left);
      GenericTaskDeclarations_VoidFuture_t sorter2 = quicksort_futureInit_a2a2a0a7(middle, right);
      GenericTaskDeclarations_joinVoidFuture(&sorter1);
      GenericTaskDeclarations_joinVoidFuture(&sorter2);
    }    else 
    {
      quicksort_quickSort(left, middle - 1);
      quicksort_quickSort(middle + 1, right);
    }
  }
}

static int32_t quicksort_partition(int32_t left, int32_t right) 
{
  quicksort_SharedTypes_0_SharedOf_Generic_0_t* pivot;
  {
    quicksort_SharedTypes_0_SharedOf_Generic_0_t* genericsLeft = &quicksort_generics.value[left];
    GenericSyncDeclarations_startSyncFor2Mutexes(&quicksort_generics.mutex, &genericsLeft->mutex);
    {
      pivot = genericsLeft;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&quicksort_generics.mutex, &genericsLeft->mutex);
  }
  int32_t i = left;
  int32_t j = right + 1;
  
  while (true)
  {
    do{
      ++i;
    } while (!(quicksort_biggerThan(i, left)) && i < right);
    do{
      --j;
    } while (quicksort_biggerThan(j, left));
    if ( i >= j ) 
    {
      break;
    }
    quicksort_swap(i, j);
  }
  
  if ( left != j ) 
  {
    quicksort_swap(left, j);
  }
  return j;
}

static bool quicksort_biggerThan(int32_t index1, int32_t index2) 
{
  /* although the non-synced doHeavyWork() should dominate everything else time-wise the 
synchronization overhead adds so much time that the program is almost as slow as the 
serial one */
  quicksort_doHeavyWork();
  GenericSyncDeclarations_startSyncFor1Mutex(&quicksort_generics.mutex);
  {
    {
      quicksort_SharedTypes_0_SharedOf_Generic_0_t* generics1 = &quicksort_generics.value[index1];
      quicksort_SharedTypes_0_SharedOf_Generic_0_t* generics2 = &quicksort_generics.value[index2];
      GenericSyncDeclarations_startSyncFor2Mutexes(&generics1->mutex, &generics2->mutex);
      {
        GenericSyncDeclarations_stopSyncFor2Mutexes(&generics1->mutex, &generics2->mutex);
        GenericSyncDeclarations_stopSyncFor1Mutex(&quicksort_generics.mutex);
        return generics1->value.value > generics2->value.value;
      }
      GenericSyncDeclarations_stopSyncFor2Mutexes(&generics1->mutex, &generics2->mutex);
    }
  }
  return GenericSyncDeclarations_stopSyncFor1Mutex(&quicksort_generics.mutex);
}

static bool quicksort_foo(void) 
{
  if ( false ) 
  {
    return true;
  }
}

static void quicksort_swap(int32_t i, int32_t j) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&quicksort_generics.mutex);
  {
    {
      quicksort_SharedTypes_0_SharedOf_Generic_0_t* genericsI = &quicksort_generics.value[i];
      quicksort_SharedTypes_0_SharedOf_Generic_0_t* genericsJ = &quicksort_generics.value[j];
      GenericSyncDeclarations_startSyncFor2Mutexes(&genericsI->mutex, &genericsJ->mutex);
      {
        quicksort_SharedTypes_0_Generic_t temp = genericsI->value;
        genericsI->value = genericsJ->value;
        genericsJ->value = genericsI->value;
      }
      GenericSyncDeclarations_stopSyncFor2Mutexes(&genericsI->mutex, &genericsJ->mutex);
    }
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&quicksort_generics.mutex);
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

static void* quicksort_parFun_a0b0c0a0h(void* voidArgs) 
{
  quicksort_Args_a0b0c0a0h_t* args = ((quicksort_Args_a0b0c0a0h_t*)(voidArgs));
  quicksort_quickSort((args)->left, (args)->middle - 1);
  free(voidArgs);
  return 0;
}

static void* quicksort_parFun_a0c0c0a0h(void* voidArgs) 
{
  quicksort_Args_a0c0c0a0h_t* args = ((quicksort_Args_a0c0c0a0h_t*)(voidArgs));
  quicksort_quickSort((args)->middle + 1, (args)->right);
  free(voidArgs);
  return 0;
}

void quicksort_initGlobalMutexesFor1Module_0(void) 
{
  quicksort_SharedTypes_0_mutexInit_1(&quicksort_generics);
}

void quicksort_initAllGlobalMutexes_0(void) 
{
  quicksort_initGlobalMutexesFor1Module_0();
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a7(int32_t middle, int32_t left) 
{
  quicksort_Args_a0b0c0a0h_t* args_a1a2a0a7 = malloc(sizeof(quicksort_Args_a0b0c0a0h_t));
  args_a1a2a0a7->middle = middle;
  args_a1a2a0a7->left = left;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0b0c0a0h,args_a1a2a0a7);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a2a2a0a7(int32_t middle, int32_t right) 
{
  quicksort_Args_a0c0c0a0h_t* args_a2a2a0a7 = malloc(sizeof(quicksort_Args_a0c0c0a0h_t));
  args_a2a2a0a7->middle = middle;
  args_a2a2a0a7->right = right;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0c0c0a0h,args_a2a2a0a7);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

