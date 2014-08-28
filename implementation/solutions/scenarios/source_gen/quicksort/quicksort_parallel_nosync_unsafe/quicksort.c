#include "quicksort.h"


#include <stdio.h>
#include <stdlib.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

typedef struct quicksort_Item quicksort_Item_t;
struct quicksort_Item {
  int32_t value;
};

typedef struct quicksort_Args_a0c0c0a0h quicksort_Args_a0c0c0a0h_t;
struct quicksort_Args_a0c0c0a0h {
  quicksort_Item_t* items;
  int32_t middle;
  int32_t right;
};

typedef struct quicksort_Args_a0b0c0a0h quicksort_Args_a0b0c0a0h_t;
struct quicksort_Args_a0b0c0a0h {
  quicksort_Item_t* items;
  int32_t left;
  int32_t middle;
};

static void quicksort_doHeavyWork(void);

static void* quicksort_parFun_a0b0c0a0h(void* voidArgs);

static void* quicksort_parFun_a0c0c0a0h(void* voidArgs);

static void quicksort_initItems(quicksort_Item_t items[QUICKSORT_numberOfItems]);

static bool quicksort_biggerThan(quicksort_Item_t item1, quicksort_Item_t item2);

static void quicksort_printItems(quicksort_Item_t items[QUICKSORT_numberOfItems], int32_t start, int32_t end);

static void quicksort_swap(quicksort_Item_t items[QUICKSORT_numberOfItems], int32_t i, int32_t j);

static void quicksort_quickSort(quicksort_Item_t items[QUICKSORT_numberOfItems], int32_t left, int32_t right);

static int32_t quicksort_partition(quicksort_Item_t items[QUICKSORT_numberOfItems], int32_t left, int32_t right);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a7(int32_t middle, int32_t left, quicksort_Item_t items[QUICKSORT_numberOfItems]);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a2a2a0a7(int32_t middle, int32_t right, quicksort_Item_t items[QUICKSORT_numberOfItems]);

int32_t main(int32_t argc, char* argv[]) 
{
  quicksort_Item_t items[QUICKSORT_numberOfItems];
  quicksort_initItems(items);
  
  
  quicksort_quickSort(items, 0, QUICKSORT_numberOfItems - 1);
  
  
  return 0;
}

static void quicksort_doHeavyWork(void) 
{
  for ( int16_t __i = 0; __i < QUICKSORT_heavyWorkSize; __i++ )
  {
    for ( int16_t __j = 0; __j < QUICKSORT_heavyWorkSize; __j++ )
    {
      __j * __j * __j;
    }
  }
}

static void* quicksort_parFun_a0b0c0a0h(void* voidArgs) 
{
  quicksort_Args_a0b0c0a0h_t* args = ((quicksort_Args_a0b0c0a0h_t*)(voidArgs));
  quicksort_quickSort((args)->items, (args)->left, (args)->middle - 1);
  free(voidArgs);
  return 0;
}

static void* quicksort_parFun_a0c0c0a0h(void* voidArgs) 
{
  quicksort_Args_a0c0c0a0h_t* args = ((quicksort_Args_a0c0c0a0h_t*)(voidArgs));
  quicksort_quickSort((args)->items, (args)->middle + 1, (args)->right);
  free(voidArgs);
  return 0;
}

static void quicksort_initItems(quicksort_Item_t items[QUICKSORT_numberOfItems]) 
{
  for ( int16_t __i = 0; __i < QUICKSORT_numberOfItems; __i++ )
  {
    items[__i].value = rand();
  }
}

static bool quicksort_biggerThan(quicksort_Item_t item1, quicksort_Item_t item2) 
{
  quicksort_doHeavyWork();
  return item1.value > item2.value;
}

static void quicksort_printItems(quicksort_Item_t items[QUICKSORT_numberOfItems], int32_t start, int32_t end) 
{
  for ( int32_t __i = start; __i < end; __i++ )
  {
    printf("%d |  %d\n", __i, items[__i].value);
  }
}

static void quicksort_swap(quicksort_Item_t items[QUICKSORT_numberOfItems], int32_t i, int32_t j) 
{
  quicksort_Item_t temp = items[i];
  items[i] = items[j];
  items[j] = temp;
}

static void quicksort_quickSort(quicksort_Item_t items[QUICKSORT_numberOfItems], int32_t left, int32_t right) 
{
  if ( left < right ) 
  {
    int32_t middle = quicksort_partition(items, left, right);
    
    if ( middle - left > QUICKSORT_threshold && right - middle > QUICKSORT_threshold ) 
    {
      /* 
       * This is unsafe and should generally be avoided. In the current example, however, the sync leak is harmless.
       */

      GenericTaskDeclarations_VoidFuture_t sorter1 = quicksort_futureInit_a1a2a0a7(middle, left, items);
      GenericTaskDeclarations_VoidFuture_t sorter2 = quicksort_futureInit_a2a2a0a7(middle, right, items);
      GenericTaskDeclarations_joinVoidFuture(&sorter1);
      GenericTaskDeclarations_joinVoidFuture(&sorter2);
    }    else 
    {
      quicksort_quickSort(items, left, middle - 1);
      quicksort_quickSort(items, middle + 1, right);
    }
  }
  
}

static int32_t quicksort_partition(quicksort_Item_t items[QUICKSORT_numberOfItems], int32_t left, int32_t right) 
{
  quicksort_Item_t pivot = items[left];
  int32_t i = left;
  int32_t j = right + 1;
  
  while (true)
  {
    do{
      ++i;
    } while (!(quicksort_biggerThan(items[i], pivot)) && i < right);
    do{
      --j;
    } while (quicksort_biggerThan(items[j], pivot));
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

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a7(int32_t middle, int32_t left, quicksort_Item_t items[QUICKSORT_numberOfItems]) 
{
  quicksort_Args_a0b0c0a0h_t* args_a1a2a0a7 = malloc(sizeof(quicksort_Args_a0b0c0a0h_t));
  args_a1a2a0a7->middle = middle;
  args_a1a2a0a7->items = items;
  args_a1a2a0a7->left = left;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0b0c0a0h,args_a1a2a0a7);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a2a2a0a7(int32_t middle, int32_t right, quicksort_Item_t items[QUICKSORT_numberOfItems]) 
{
  quicksort_Args_a0c0c0a0h_t* args_a2a2a0a7 = malloc(sizeof(quicksort_Args_a0c0c0a0h_t));
  args_a2a2a0a7->middle = middle;
  args_a2a2a0a7->items = items;
  args_a2a2a0a7->right = right;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0c0c0a0h,args_a2a2a0a7);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

