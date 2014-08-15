#include "quicksort.h"


#include <stdio.h>
#include <stdlib.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

typedef struct quicksort_Generic quicksort_Generic_t;
struct quicksort_Generic {
  int32_t value;
};

typedef struct quicksort_Args_a0c0c0a0g quicksort_Args_a0c0c0a0g_t;
struct quicksort_Args_a0c0c0a0g {
  quicksort_Generic_t* generics;
  int32_t middle;
  int32_t right;
};

typedef struct quicksort_Args_a0b0c0a0g quicksort_Args_a0b0c0a0g_t;
struct quicksort_Args_a0b0c0a0g {
  quicksort_Generic_t* generics;
  int32_t left;
  int32_t middle;
};

static void quicksort_doHeavyWork(void);

static void* quicksort_parFun_a0b0c0a0g(void* voidArgs);

static void* quicksort_parFun_a0c0c0a0g(void* voidArgs);

static void quicksort_initGenerics(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics]);

static void quicksort_swap(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t i, int32_t j);

static int32_t quicksort_partition(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t left, int32_t right);

static void quicksort_printGenerics(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t start, int32_t end);

static bool quicksort_biggerThan(quicksort_Generic_t generic1, quicksort_Generic_t generic2);

static void quicksort_quickSort(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t left, int32_t right);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a6(int32_t middle, quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t left);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a2a2a0a6(int32_t middle, quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t right);

int32_t main(int32_t argc, char* argv[]) 
{
  quicksort_Generic_t generics[QUICKSORT_numberOfGenerics];
  quicksort_initGenerics(generics);
  
  
  quicksort_quickSort(generics, 0, QUICKSORT_numberOfGenerics - 1);
  
  
  return 0;
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

static void quicksort_initGenerics(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics]) 
{
  for ( int16_t __i = 0; __i < QUICKSORT_numberOfGenerics; __i++ )
  {
    generics[__i].value = rand();
  }
}

static void quicksort_swap(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t i, int32_t j) 
{
  quicksort_Generic_t temp = generics[i];
  generics[i] = generics[j];
  generics[j] = temp;
}

static int32_t quicksort_partition(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t left, int32_t right) 
{
  quicksort_Generic_t pivot = generics[left];
  int32_t i = left;
  int32_t j = right + 1;
  
  while (true)
  {
    do{
      ++i;
    } while (!(quicksort_biggerThan(generics[i], pivot)) && i < right);
    do{
      --j;
    } while (quicksort_biggerThan(generics[j], pivot));
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

static void quicksort_printGenerics(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t start, int32_t end) 
{
  for ( int32_t __i = start; __i < end; __i++ )
  {
    printf("%d |  %d\n", __i, generics[__i].value);
  }
}

static bool quicksort_biggerThan(quicksort_Generic_t generic1, quicksort_Generic_t generic2) 
{
  quicksort_doHeavyWork();
  return generic1.value > generic2.value;
}

static void quicksort_quickSort(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t left, int32_t right) 
{
  if ( left < right ) 
  {
    int32_t middle = quicksort_partition(generics, left, right);
    
    if ( middle - left > QUICKSORT_threshold && right - middle > QUICKSORT_threshold ) 
    {
      printf("multi!\n");
      GenericTaskDeclarations_VoidFuture_t sorter1 = quicksort_futureInit_a1a2a0a6(middle, generics, left);
      GenericTaskDeclarations_VoidFuture_t sorter2 = quicksort_futureInit_a2a2a0a6(middle, generics, right);
      GenericTaskDeclarations_joinVoidFuture(&sorter1);
      GenericTaskDeclarations_joinVoidFuture(&sorter2);
    }    else 
    {
      quicksort_quickSort(generics, left, middle - 1);
      quicksort_quickSort(generics, middle + 1, right);
    }
  }
  
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a6(int32_t middle, quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t left) 
{
  quicksort_Args_a0b0c0a0g_t* args_a1a2a0a6 = malloc(sizeof(quicksort_Args_a0b0c0a0g_t));
  args_a1a2a0a6->middle = middle;
  args_a1a2a0a6->generics = generics;
  args_a1a2a0a6->left = left;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0b0c0a0g,args_a1a2a0a6);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a2a2a0a6(int32_t middle, quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t right) 
{
  quicksort_Args_a0c0c0a0g_t* args_a2a2a0a6 = malloc(sizeof(quicksort_Args_a0c0c0a0g_t));
  args_a2a2a0a6->middle = middle;
  args_a2a2a0a6->generics = generics;
  args_a2a2a0a6->right = right;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0c0c0a0g,args_a2a2a0a6);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

