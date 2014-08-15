#include "quicksort.h"


#include <stdio.h>
#include <stdlib.h>

static void quicksort_initNumbers(int32_t numbers[QUICKSORT_numberCount]);

static void quicksort_copyNumbers(int32_t from[QUICKSORT_numberCount], int32_t to[QUICKSORT_numberCount]);

static void quicksort_printNumber(int32_t numbers[QUICKSORT_numberCount], int32_t start, int32_t end);

static void quicksort_quickSort(int32_t numbers[QUICKSORT_numberCount], int32_t left, int32_t right);

static int32_t quicksort_partition(int32_t numbers[QUICKSORT_numberCount], int32_t left, int32_t right);

static bool quicksort_biggerThan(int32_t number1, int32_t number2);

static void quicksort_swap(int32_t numbers[QUICKSORT_numberCount], int32_t i, int32_t j);

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
    
    quicksort_quickSort(numbers, left, middle - 1);
    quicksort_quickSort(numbers, middle + 1, right);
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

