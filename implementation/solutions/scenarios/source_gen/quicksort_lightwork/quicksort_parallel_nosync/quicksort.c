#include "quicksort.h"


#include <stdio.h>
#include <stdlib.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

typedef struct quicksort_Args_a0a0c0a0g quicksort_Args_a0a0c0a0g_t;
struct quicksort_Args_a0a0c0a0g {
  int32_t* numbers;
  int32_t left;
  int32_t middle;
};

typedef struct quicksort_Args_a0b0c0a0g quicksort_Args_a0b0c0a0g_t;
struct quicksort_Args_a0b0c0a0g {
  int32_t* numbers;
  int32_t middle;
  int32_t right;
};

static void quicksort_initNumbers(int32_t numbers[QUICKSORT_numberCount]);

static void quicksort_copyNumbers(int32_t from[QUICKSORT_numberCount], int32_t to[QUICKSORT_numberCount]);

static void quicksort_printNumber(int32_t numbers[QUICKSORT_numberCount], int32_t start, int32_t end);

static void quicksort_quickSort(int32_t numbers[QUICKSORT_numberCount], int32_t left, int32_t right);

static int32_t quicksort_partition(int32_t numbers[QUICKSORT_numberCount], int32_t left, int32_t right);

static bool quicksort_biggerThan(int32_t number1, int32_t number2);

static void quicksort_swap(int32_t numbers[QUICKSORT_numberCount], int32_t i, int32_t j);

static void* quicksort_parFun_a0a0c0a0g(void* voidArgs);

static void* quicksort_parFun_a0b0c0a0g(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a0a2a0a6(int32_t middle, int32_t numbers[QUICKSORT_numberCount], int32_t left);

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a6(int32_t middle, int32_t numbers[QUICKSORT_numberCount], int32_t right);

int32_t main(int32_t argc, char* argv[]) 
{
  int32_t originalNumbers[QUICKSORT_numberCount];
  int32_t sortableNumbers[QUICKSORT_numberCount];
  quicksort_initNumbers(originalNumbers);
  
  
  /* 
   * simulate a very long array (since we can only work on the limited stack, not on the heap)
   */

  for ( int16_t __i = 0; __i < 200; __i++ )
  {
    quicksort_copyNumbers(originalNumbers, sortableNumbers);
    quicksort_quickSort(sortableNumbers, 0, QUICKSORT_numberCount - 1);
  }
  
  
  
  return 0;
}

static void quicksort_initNumbers(int32_t numbers[QUICKSORT_numberCount]) 
{
  for ( int32_t __i = 0; __i < QUICKSORT_numberCount; __i++ )
  {
    numbers[__i] = rand();
  }
}

static void quicksort_copyNumbers(int32_t from[QUICKSORT_numberCount], int32_t to[QUICKSORT_numberCount]) 
{
  for ( int32_t __i = 0; __i < QUICKSORT_numberCount; __i++ )
  {
    to[__i] = from[__i];
  }
  
}

static void quicksort_printNumber(int32_t numbers[QUICKSORT_numberCount], int32_t start, int32_t end) 
{
  for ( int32_t __i = start; __i < end; __i++ )
  {
    printf("%d |  %d\n", __i, numbers[__i]);
  }
}

static void quicksort_quickSort(int32_t numbers[QUICKSORT_numberCount], int32_t left, int32_t right) 
{
  if ( left < right ) 
  {
    int32_t middle = quicksort_partition(numbers, left, right);
    
    if ( middle - left > QUICKSORT_threshold && right - middle > QUICKSORT_threshold ) 
    {
      GenericTaskDeclarations_VoidFuture_t sorter1 = quicksort_futureInit_a0a2a0a6(middle, numbers, left);
      GenericTaskDeclarations_VoidFuture_t sorter2 = quicksort_futureInit_a1a2a0a6(middle, numbers, right);
      GenericTaskDeclarations_joinVoidFuture(&sorter1);
      GenericTaskDeclarations_joinVoidFuture(&sorter2);
    }    else 
    {
      quicksort_quickSort(numbers, left, middle - 1);
      quicksort_quickSort(numbers, middle + 1, right);
    }
  }
  
}

static int32_t quicksort_partition(int32_t numbers[QUICKSORT_numberCount], int32_t left, int32_t right) 
{
  int32_t pivot = numbers[left];
  int32_t i = left;
  int32_t j = right + 1;
  
  while (true)
  {
    do{
      ++i;
    } while (!(quicksort_biggerThan(numbers[i], pivot)) && i < right);
    do{
      --j;
    } while (quicksort_biggerThan(numbers[j], pivot));
    if ( i >= j ) 
    {
      break;
    }
    quicksort_swap(numbers, i, j);
  }
  
  if ( left != j ) 
  {
    quicksort_swap(numbers, left, j);
  }
  return j;
}

static bool quicksort_biggerThan(int32_t number1, int32_t number2) 
{
  return number1 > number2;
}

static void quicksort_swap(int32_t numbers[QUICKSORT_numberCount], int32_t i, int32_t j) 
{
  int32_t temp = numbers[i];
  numbers[i] = numbers[j];
  numbers[j] = temp;
}

static void* quicksort_parFun_a0a0c0a0g(void* voidArgs) 
{
  quicksort_Args_a0a0c0a0g_t* args = ((quicksort_Args_a0a0c0a0g_t*)(voidArgs));
  quicksort_quickSort((args)->numbers, (args)->left, (args)->middle - 1);
  free(voidArgs);
  return 0;
}

static void* quicksort_parFun_a0b0c0a0g(void* voidArgs) 
{
  quicksort_Args_a0b0c0a0g_t* args = ((quicksort_Args_a0b0c0a0g_t*)(voidArgs));
  quicksort_quickSort((args)->numbers, (args)->middle + 1, (args)->right);
  free(voidArgs);
  return 0;
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a0a2a0a6(int32_t middle, int32_t numbers[QUICKSORT_numberCount], int32_t left) 
{
  quicksort_Args_a0a0c0a0g_t* args_a0a2a0a6 = malloc(sizeof(quicksort_Args_a0a0c0a0g_t));
  args_a0a2a0a6->middle = middle;
  args_a0a2a0a6->numbers = numbers;
  args_a0a2a0a6->left = left;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0a0c0a0g,args_a0a2a0a6);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t quicksort_futureInit_a1a2a0a6(int32_t middle, int32_t numbers[QUICKSORT_numberCount], int32_t right) 
{
  quicksort_Args_a0b0c0a0g_t* args_a1a2a0a6 = malloc(sizeof(quicksort_Args_a0b0c0a0g_t));
  args_a1a2a0a6->middle = middle;
  args_a1a2a0a6->numbers = numbers;
  args_a1a2a0a6->right = right;
  pthread_t pth;
  pthread_create(&pth,0,&quicksort_parFun_a0b0c0a0g,args_a1a2a0a6);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

