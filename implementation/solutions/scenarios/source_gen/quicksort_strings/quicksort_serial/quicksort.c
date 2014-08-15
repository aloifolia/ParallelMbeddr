#include "quicksort.h"


#include <stdio.h>
#include <stdlib.h>

static char** quicksort_initStrings(void);

static void quicksort_printStrings(char** strings, int32_t start, int32_t end);

static void quicksort_readStringsFromFile(char** strings, FILE* file);

static void quicksort_quickSort(char** strings, int32_t left, int32_t right);

static int32_t quicksort_partition(char** strings, int32_t left, int32_t right);

static bool quicksort_biggerThan(char* string1, char* string2, int32_t start, int32_t end);

static void quicksort_swap(char** strings, int32_t i, int32_t j);

int32_t main(int32_t argc, char* argv[]) 
{
  char** strings = quicksort_initStrings();
  
  
  quicksort_quickSort(strings, 0, QUICKSORT_numberOfStrings - 1);
  
  
  return 0;
}

static char** quicksort_initStrings(void) 
{
  char** strings = ((char**)(malloc(sizeof(char*) * QUICKSORT_numberOfStrings)));
  for ( int32_t __i = 0; __i < QUICKSORT_numberOfStrings; __i++ )
  {
    strings[__i] = ((char*)(malloc(sizeof(char) * QUICKSORT_stringLength)));
    for ( int16_t __j = 0; __j < QUICKSORT_stringLength; __j++ )
    {
      strings[__i][__j] = (rand() % 26) + 97;
    }
  }
  
  return strings;
}

static void quicksort_printStrings(char** strings, int32_t start, int32_t end) 
{
  for ( int32_t __i = start; __i < end; __i++ )
  {
    printf("%d |  ", __i);
    for ( int16_t __j = 0; __j < QUICKSORT_stringLength; __j++ )
    {
      printf("%c", strings[__i][__j]);
    }
    printf("\n");
  }
}

static void quicksort_readStringsFromFile(char** strings, FILE* file) 
{
  for ( int32_t __i = 0; __i < QUICKSORT_numberOfStrings; __i++ )
  {
    if ( !(fgets(strings[__i], sizeof(char) * QUICKSORT_stringLength, file)) ) 
    {
      break;
    }
  }
}

static void quicksort_quickSort(char** strings, int32_t left, int32_t right) 
{
  if ( left < right ) 
  {
    int32_t middle = quicksort_partition(strings, left, right);
    
    quicksort_quickSort(strings, left, middle - 1);
    quicksort_quickSort(strings, middle + 1, right);
  }
  
}

static int32_t quicksort_partition(char** strings, int32_t left, int32_t right) 
{
  char* pivot = strings[left];
  int32_t i = left;
  int32_t j = right + 1;
  
  while (true)
  {
    do{
      ++i;
    } while (!(quicksort_biggerThan(strings[i], pivot, 0, QUICKSORT_stringLength - 1)) && i < right);
    do{
      --j;
    } while (quicksort_biggerThan(strings[j], pivot, 0, QUICKSORT_stringLength - 1));
    if ( i >= j ) 
    {
      break;
    }
    quicksort_swap(strings, i, j);
  }
  
  if ( left != j ) 
  {
    quicksort_swap(strings, left, j);
  }
  return j;
}

static bool quicksort_biggerThan(char* string1, char* string2, int32_t start, int32_t end) 
{
  /* 
   * not made efficient on purpose
   */

  if ( start >= end ) 
  {
    return false;
  }
  return string1[start] > string2[start] || string1[start] == string2[start] && quicksort_biggerThan(string1, string2, start + 1, end);
}

static void quicksort_swap(char** strings, int32_t i, int32_t j) 
{
  char* temp = strings[i];
  strings[i] = strings[j];
  strings[j] = temp;
}

