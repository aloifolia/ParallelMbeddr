#include "pi.h"


#include <stdio.h>
#include <math.h>

static double pi_piBlock(int32_t start,int32_t end);

static double pi_piItem(int32_t index);

int32_t main(int32_t argc, char* argv[]) 
{
  double pi = pi_piBlock(0, PI_threshold);
  printf("pi(%d) = %f\n",PI_threshold,pi);
  return 0;
}


static double pi_piBlock(int32_t start, int32_t end) 
{
  double result = 0;
  for ( int32_t i = start; i < end; ++i )
  {
    result += pi_piItem(i);
  }

  return result;
}


static double pi_piItem(int32_t index) 
{
  return 4.0 * (pow(-1.0,index) / (2.0 * index + 1.0));
}


