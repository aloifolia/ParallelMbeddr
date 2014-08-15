#include "quicksort.h"


#include <stdio.h>
#include <stdlib.h>

typedef struct quicksort_Generic quicksort_Generic_t;
struct quicksort_Generic {
  int32_t value;
};

static void quicksort_doHeavyWork(void);

static void quicksort_printGenerics(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t start, int32_t end);

static void quicksort_swap(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t i, int32_t j);

static int32_t quicksort_partition(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t left, int32_t right);

static bool quicksort_biggerThan(quicksort_Generic_t generic1, quicksort_Generic_t generic2);

static void quicksort_initGenerics(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics]);

static void quicksort_quickSort(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t left, int32_t right);

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

static void quicksort_printGenerics(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t start, int32_t end) 
{
  for ( int32_t __i = start; __i < end; __i++ )
  {
    printf("%d |  %d\n", __i, generics[__i].value);
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

static bool quicksort_biggerThan(quicksort_Generic_t generic1, quicksort_Generic_t generic2) 
{
  quicksort_doHeavyWork();
  return generic1.value > generic2.value;
}

static void quicksort_initGenerics(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics]) 
{
  for ( int16_t __i = 0; __i < QUICKSORT_numberOfGenerics; __i++ )
  {
    generics[__i].value = rand();
  }
}

static void quicksort_quickSort(quicksort_Generic_t generics[QUICKSORT_numberOfGenerics], int32_t left, int32_t right) 
{
  if ( left < right ) 
  {
    int32_t middle = quicksort_partition(generics, left, right);
    
    quicksort_quickSort(generics, left, middle - 1);
    quicksort_quickSort(generics, middle + 1, right);
  }
  
}

