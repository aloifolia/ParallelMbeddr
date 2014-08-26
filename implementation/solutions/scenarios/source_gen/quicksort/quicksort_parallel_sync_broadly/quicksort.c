#include "quicksort.h"


#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "quicksort_SharedTypes_0.h"
#include <stdlib.h>

typedef struct quicksort_Args_a0a0c0a0g quicksort_Args_a0a0c0a0g_t;
struct quicksort_Args_a0a0c0a0g {
  quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items;
  int32_t left;
  int32_t middle;
};

typedef struct quicksort_Args_a0b0c0a0g quicksort_Args_a0b0c0a0g_t;
struct quicksort_Args_a0b0c0a0g {
  quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items;
  int32_t middle;
  int32_t right;
};

static void quicksort_initItems(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items);

static void quicksort_printItems(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t start, int32_t end);

static void quicksort_quickSort(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t left, int32_t right);

static int32_t quicksort_partition(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t left, int32_t right);

static bool quicksort_biggerThan(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t index1, int32_t index2);

static void quicksort_swap(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t i, int32_t j);

static void quicksort_doHeavyWork(void);

static void* quicksort_parFun_a0a0c0a0g(void* voidArgs);

static void* quicksort_parFun_a0b0c0a0g(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a0a2a0a6(int32_t middle, quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t left);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a6(int32_t middle, quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t right);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  struct timeval begin;
  gettimeofday(&begin, 0);
  /* 
   * Scenario change: The work is split if after the division of the sub ranges of items to sort are long enough. After a recursive split the task that initiated it waits for its sub task to finish.
   */

  
  quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t items;
  pthread_mutex_init(&items.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  quicksort_initItems(&items);
  
  
  quicksort_quickSort(&items, 0, QUICKSORT_numberOfItems - 1);
  
  struct timeval end;
  gettimeofday(&end, 0);
  double timeSpent = ((double)((end.tv_usec - begin.tv_usec))) / 1000000 + ((double)((end.tv_sec - begin.tv_sec)));
  printf("\n#### duration %f\n\n", timeSpent);
  
  
  return 0;
}

static void quicksort_initItems(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items) 
{
  for ( int16_t __i = 0; __i < QUICKSORT_numberOfItems; __i++ )
  {
    {
      quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* myItems = items;
      GenericSyncDeclarations_startSyncFor1Mutex(&(myItems)->mutex);
      {
        myItems->value[__i].value = rand();
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(myItems)->mutex);
    }
  }
}

static void quicksort_printItems(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t start, int32_t end) 
{
  {
    quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* myItems = items;
    GenericSyncDeclarations_startSyncFor1Mutex(&(myItems)->mutex);
    {
      for ( int32_t __i = start; __i < end; __i++ )
      {
        printf("%d |  %d\n", __i, myItems->value[__i].value);
      }
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(myItems)->mutex);
  }
}

static void quicksort_quickSort(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t left, int32_t right) 
{
  if ( left < right ) 
  {
    int32_t middle = quicksort_partition(items, left, right);
    
    if ( middle - left > QUICKSORT_threshold && right - middle > QUICKSORT_threshold ) 
    {
      GenericTaskDeclarations_VoidFuture_t sorter1 = quicksort_futureInit_a0a2a0a6(middle, items, left);
      GenericTaskDeclarations_VoidFuture_t sorter2 = quicksort_futureInit_a1a2a0a6(middle, items, right);
      GenericTaskDeclarations_joinVoidFuture(&sorter1);
      GenericTaskDeclarations_joinVoidFuture(&sorter2);
    }    else 
    {
      quicksort_quickSort(items, left, middle - 1);
      quicksort_quickSort(items, middle + 1, right);
    }
  }
}

static int32_t quicksort_partition(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t left, int32_t right) 
{
  quicksort_SharedTypes_0_Item_t pivot;
  {
    quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* myItems = items;
    GenericSyncDeclarations_startSyncFor1Mutex(&(myItems)->mutex);
    {
      pivot = myItems->value[left];
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(myItems)->mutex);
  }
  int32_t i = left;
  int32_t j = right + 1;
  
  while (true)
  {
    do{
      ++i;
    } while (!(quicksort_biggerThan(items, i, left)) && i < right);
    do{
      --j;
    } while (quicksort_biggerThan(items, j, left));
    if ( i >= j ) 
    {
      break;
    }
    quicksort_swap(items, i, j);
  }
  
  if ( left != j ) 
  {
    quicksort_swap(items, left, j);
  }
  return j;
}

static bool quicksort_biggerThan(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t index1, int32_t index2) 
{
  /* 
   * There is no noticeable synchronization management  overhead in this example since the sync overhead is dominated by the not synchronized heavy work. With doHeavyWork() inside sync(...) the program is basically serialized. Therefore, apply lock narrowing to reduce the amount of lock contention.
   */

  {
    quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* myItems = items;
    {
      quicksort_doHeavyWork();
      GenericSyncDeclarations_startSyncFor1Mutex(&(myItems)->mutex);
      {
        GenericSyncDeclarations_stopSyncFor1Mutex(&(myItems)->mutex);
        return myItems->value[index1].value > myItems->value[index2].value;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(myItems)->mutex);
    }
  }
  /* 
   * satisfy mbeddr's incomplete dataflow analysis...
   */

  return false;
}

static void quicksort_swap(quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t i, int32_t j) 
{
  {
    quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* myItems = items;
    GenericSyncDeclarations_startSyncFor1Mutex(&(myItems)->mutex);
    {
      quicksort_SharedTypes_0_Item_t temp = myItems->value[i];
      myItems->value[i] = myItems->value[j];
      myItems->value[j] = temp;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(myItems)->mutex);
  }
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

static void* quicksort_parFun_a0a0c0a0g(void* voidArgs) 
{
  quicksort_Args_a0a0c0a0g_t* args = ((quicksort_Args_a0a0c0a0g_t*)(voidArgs));
  quicksort_quickSort((args)->items, (args)->left, (args)->middle - 1);
  free(voidArgs);
  return 0;
}

static void* quicksort_parFun_a0b0c0a0g(void* voidArgs) 
{
  quicksort_Args_a0b0c0a0g_t* args = ((quicksort_Args_a0b0c0a0g_t*)(voidArgs));
  quicksort_quickSort((args)->items, (args)->middle + 1, (args)->right);
  free(voidArgs);
  return 0;
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a0a2a0a6(int32_t middle, quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t left) 
{
  quicksort_Args_a0a0c0a0g_t* args_a0a2a0a6 = malloc(sizeof(quicksort_Args_a0a0c0a0g_t));
  args_a0a2a0a6->middle = middle;
  args_a0a2a0a6->items = items;
  args_a0a2a0a6->left = left;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0a0c0a0g,args_a0a2a0a6);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a6(int32_t middle, quicksort_SharedTypes_0_SharedOf_ArrayOf_Item_0_t* items, int32_t right) 
{
  quicksort_Args_a0b0c0a0g_t* args_a1a2a0a6 = malloc(sizeof(quicksort_Args_a0b0c0a0g_t));
  args_a1a2a0a6->middle = middle;
  args_a1a2a0a6->items = items;
  args_a1a2a0a6->right = right;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0b0c0a0g,args_a1a2a0a6);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

