#include "pi.h"


#include <stdio.h>
#include <math.h>

static void pi_calcPiBlock(double* result,int32_t start,int32_t end);

static void pi_calcPiItem(double* piItem,int32_t index);

int32_t main(int32_t argc, char* argv[]) 
{
  double result;
  
  for ( int32_t i = 0; i < PI_THRESHOLD; i += PI_BLOCKSIZE )
  {
    pi_calcPiBlock(&result, i, i + PI_BLOCKSIZE);
  }

  
  printf("pi = %f\n",result);
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
  *piItem = 4.0 * (pow(-1.0,index) / (2.0 * index + 1.0));
}


