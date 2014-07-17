#include "pi.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct pi_Args_a0c0f0e {
  uint32_t start;
  uint32_t end;
};

static long double pi_calcPiRange(uint32_t start,uint32_t end);

static long double pi_calcPiItem(uint32_t index);

static void* pi_parFun_a0c0f0e(void* voidArgs);

static inline struct GenericTaskDeclarations_Task pi_taskInit_a0c0f0e(uint32_t end,uint32_t start);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  pi_initAllGlobalMutexes_0();
  long double result = 0;
  
  struct GenericTaskDeclarations_Task calculators[PI_RANGECOUNT];
  struct GenericTaskDeclarations_Future partialResults[PI_RANGECOUNT];
  
  for ( int8_t __i = 0; __i < PI_RANGECOUNT; __i++ )
  {
    uint32_t start = __i * PI_RANGESIZE;
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
  
  pi_destroyAllGlobalMutexes_0();
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
  struct pi_Args_a0c0f0e* args = ((struct pi_Args_a0c0f0e*)(voidArgs));
  *result = pi_calcPiRange((args)->start, (args)->end);
  free(voidArgs);
  return result;
}


void pi_initAllGlobalMutexes_0(void) 
{
}


void pi_destroyAllGlobalMutexes_0(void) 
{
}


static inline struct GenericTaskDeclarations_Task pi_taskInit_a0c0f0e(uint32_t end, uint32_t start) 
{
  struct pi_Args_a0c0f0e* args_a0c0f0e = malloc(sizeof(struct pi_Args_a0c0f0e));
  args_a0c0f0e->start = start;
  args_a0c0f0e->end = end;
  return (struct GenericTaskDeclarations_Task){args_a0c0f0e,&pi_parFun_a0c0f0e,sizeof(struct pi_Args_a0c0f0e)};
}


