#include "pi.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef struct pi_Args_a0c0f0e pi_Args_a0c0f0e_t;
struct pi_Args_a0c0f0e {
  uint32_t start;
  uint32_t end;
};

static long double pi_calcPiRange(uint32_t start, uint32_t end);

static long double pi_calcPiItem(uint32_t index);

static void* pi_parFun_a0c0f0e(void* voidArgs);

static inline GenericTaskDeclarations_Task_t pi_taskInit_a0c0f0e(uint32_t end, uint32_t start);

int32_t main(int32_t argc, char* argv[]) 
{
  long double result = 0;
  
  GenericTaskDeclarations_Task_t calculators[PI_RANGECOUNT];
  GenericTaskDeclarations_Future_t partialResults[PI_RANGECOUNT];
  
  for ( int8_t __i = 0; __i < PI_RANGECOUNT; __i++ )
  {
    uint32_t start = ((uint32_t)(__i)) * PI_RANGESIZE;
    uint32_t end = start + PI_RANGESIZE;
    calculators[__i] = pi_taskInit_a0c0f0e(end, start);
  }
  
  for ( int8_t __i = 0; __i < PI_RANGECOUNT; __i++ )
  {
    partialResults[__i] = GenericTaskDeclarations_runTaskAndGetFuture(calculators[__i]);
    free(calculators[__i].args);
  }
  
  for ( int8_t __i = 0; __i < PI_RANGECOUNT; __i++ )
  {
    result += *(((long double*)(GenericTaskDeclarations_getFutureResult(&partialResults[__i]))));
    free(((long double*)(GenericTaskDeclarations_getFutureResult(&partialResults[__i]))));
  }
  
  printf("result: %.50Lf\n\n",result);
  
  return 0;
}

static long double pi_calcPiRange(uint32_t start, uint32_t end) 
{
  long double partialSum = 0;
  for ( uint32_t i = start; i < end; ++i )
  {
    partialSum += pi_calcPiItem(i);
  }
  return partialSum;
}

static long double pi_calcPiItem(uint32_t index) 
{
  return 4.0 * (pow(-1.0,index) / (2.0 * index + 1.0));
}

static void* pi_parFun_a0c0f0e(void* voidArgs) 
{
  long double* result = malloc(sizeof(long double));
  pi_Args_a0c0f0e_t* args = ((pi_Args_a0c0f0e_t*)(voidArgs));
  *result = pi_calcPiRange((args)->start, (args)->end);
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t pi_taskInit_a0c0f0e(uint32_t end, uint32_t start) 
{
  pi_Args_a0c0f0e_t* args_a0c0f0e = malloc(sizeof(pi_Args_a0c0f0e_t));
  args_a0c0f0e->start = start;
  args_a0c0f0e->end = end;
  return (GenericTaskDeclarations_Task_t){args_a0c0f0e,&pi_parFun_a0c0f0e,sizeof(pi_Args_a0c0f0e_t)};
}

