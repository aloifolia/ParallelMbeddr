#include "pi.h"


#include <stdio.h>
#include <sys/time.h>
#include <math.h>

static void pi_calcPiBlock(double* result, int32_t start, int32_t end);

static void pi_calcPiItem(double* piItem, int32_t index);

int32_t main(int32_t argc, char* argv[]) 
{
  struct timeval begin;
  gettimeofday(&begin, 0);
  
  double result;
  
  for ( int32_t i = 0; i < PI_THRESHOLD; i += PI_BLOCKSIZE )
  {
    pi_calcPiBlock(&result, i, i + PI_BLOCKSIZE);
  }
  
  struct timeval end;
  gettimeofday(&end, 0);
  double timeSpent = ((double)((end.tv_usec - begin.tv_usec))) / 1000000 + ((double)((end.tv_sec - begin.tv_sec)));
  printf("\n#### duration %f\n\n", timeSpent);
  printf("## blocksize:  %d\n", PI_BLOCKSIZE);
  printf("## blockcount: %d\n", PI_BLOCKCOUNT);
  printf("## threshold:  %d\n", PI_THRESHOLD);
  printf("pi = %f\n", result);
  
  return 0;
}

static void pi_calcPiBlock(double* result, int32_t start, int32_t end) 
{
  double piItem;
  for ( int32_t i = start; i < end; ++i )
  {
    pi_calcPiItem(&piItem, i);
    *result += piItem;
  }
}

static void pi_calcPiItem(double* piItem, int32_t index) 
{
  *piItem = 4.0 * (pow(-1.0, index) / (2.0 * index + 1.0));
}

