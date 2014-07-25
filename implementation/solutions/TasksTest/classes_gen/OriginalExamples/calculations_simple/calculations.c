#include "calculations.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

struct calculations_Args_a0a0b0b {
  int8_t i;
};

static int32_t calculations_calcFactors(int8_t n);

static void calculations_foo(void);

static void* calculations_parFun_a0a0b0b(void* voidArgs);

static inline struct GenericTaskDeclarations_Task calculations_taskInit_a0a0b0b(int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  struct GenericTaskDeclarations_Task tasks[CALCULATIONS_threshold];
  for ( int8_t i = 0; i < CALCULATIONS_threshold; ++i )
  {
    tasks[i] = calculations_taskInit_a0a0b0b(i);
  }

  struct GenericTaskDeclarations_Future futures[CALCULATIONS_threshold];
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
  struct calculations_Args_a0a0b0b* args = ((struct calculations_Args_a0a0b0b*)(voidArgs));
  *result = calculations_calcFactors((args)->i + 1);
  return result;
}


static inline struct GenericTaskDeclarations_Task calculations_taskInit_a0a0b0b(int8_t i) 
{
  struct calculations_Args_a0a0b0b* args_a0a0b0b = malloc(sizeof(struct calculations_Args_a0a0b0b));
  args_a0a0b0b->i = i;
  return (struct GenericTaskDeclarations_Task){args_a0a0b0b,&calculations_parFun_a0a0b0b};
}


