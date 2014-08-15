#include "calculations.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

typedef struct calculations_Args_a0a0b0b calculations_Args_a0a0b0b_t;
struct calculations_Args_a0a0b0b {
  int8_t i;
};

static int32_t calculations_calcFactors(int8_t n);

static void calculations_foo(void);

static void* calculations_parFun_a0a0b0b(void* voidArgs);

static inline GenericTaskDeclarations_Task_t calculations_taskInit_a0a0b0b(int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  GenericTaskDeclarations_Task_t tasks[CALCULATIONS_threshold];
  for ( int8_t i = 0; i < CALCULATIONS_threshold; ++i )
  {
    tasks[i] = calculations_taskInit_a0a0b0b(i);
  }
  GenericTaskDeclarations_Future_t futures[CALCULATIONS_threshold];
  for ( int8_t i = 0; i < CALCULATIONS_threshold; ++i )
  {
    futures[i] = GenericTaskDeclarations_runTaskAndGetFuture(tasks[i]);
  }
  
  int32_t* results[CALCULATIONS_threshold];
  for ( int8_t i = 0; i < CALCULATIONS_threshold; ++i )
  {
    results[i] = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&futures[i])));
    printf("fibo[%d] = %d\n",i,*(results[i]));
  }
  
  return 0;
}

static int32_t calculations_calcFactors(int8_t n) 
{
  int32_t result;
  for ( int32_t i = 2; i <= sqrt(n); ++i )
  {
    if ( n % result == 0 ) 
    {
      ++result;
    }
  }
  return result;
}

static void calculations_foo(void) 
{
  
}

static void* calculations_parFun_a0a0b0b(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  calculations_Args_a0a0b0b_t* args = ((calculations_Args_a0a0b0b_t*)(voidArgs));
  *result = calculations_calcFactors((args)->i + 1);
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t calculations_taskInit_a0a0b0b(int8_t i) 
{
  calculations_Args_a0a0b0b_t* args_a0a0b0b = malloc(sizeof(calculations_Args_a0a0b0b_t));
  args_a0a0b0b->i = i;
  return (GenericTaskDeclarations_Task_t){args_a0a0b0b,&calculations_parFun_a0a0b0b,sizeof(calculations_Args_a0a0b0b_t)};
}

