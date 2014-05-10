#include "fibonacci.h"


#include "GenericDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0a0a5a0 {
  int8_t i;
  <!TextGen not found for 'TasksAndSyncs.structure.SharedType'!> results[50];
  int8_t i;
};

struct fibonacci_Args_a0a0a5a0_0 {
  int8_t i;
  <!TextGen not found for 'TasksAndSyncs.structure.SharedType'!> results[50];
  int8_t i;
};

static void fibonacci_foo(void);

static void fibonacci_calcNthFibo(int8_t n,<!TextGen not found for 'TasksAndSyncs.structure.SharedType'!> result);

static int32_t fibonacci_calcNthFiboRec(int8_t n);

static void* fibonacci_parFun_a0a0a5a0(void* voidArgs);

static inline struct GenericDeclarations_Task fibonacci_taskInit_a0a0a5a0(int8_t i,<!TextGen not found for 'TasksAndSyncs.structure.SharedType'!> results[50]);

int32_t main(int32_t argc, char* argv[]) 
{
  
  struct GenericDeclarations_VoidFuture fiboFutures[50];
  <!TextGen not found for 'TasksAndSyncs.structure.SharedType'!> results[50];
  0;
  
  for ( int8_t i = 0; i < 50; ++i )
  {
    fiboFutures[i] = GenericDeclarations_runTaskAndGetVoidFuture(fibonacci_taskInit_a0a0a5a0(i, results));
  }

  
  for ( int8_t i = 0; i < 50; ++i )
  {
    GenericDeclarations_joinVoidFuture(&fiboFutures[i]);
    <!TextGen not found for 'TasksAndSyncs.structure.Sync'!>;
  }

  
  return 0;
}


static void fibonacci_foo(void) 
{
  
}


static void fibonacci_calcNthFibo(int8_t n, <!TextGen not found for 'TasksAndSyncs.structure.SharedType'!> result) 
{
  <!TextGen not found for 'TasksAndSyncs.structure.Sync'!>;
}


static int32_t fibonacci_calcNthFiboRec(int8_t n) 
{
  if ( n == 1 || n == 2 ) 
  {
    return 1;
  }

  return fibonacci_calcNthFiboRec(n - 1) + fibonacci_calcNthFiboRec(n - 2);
}


static void* fibonacci_parFun_a0a0a5a0(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a5a0_0* args = ((struct fibonacci_Args_a0a0a5a0_0*)(voidArgs));
  fibonacci_calcNthFibo((???).i + 1, (???).results[(*args).i]);
  return 0;
}


static inline struct GenericDeclarations_Task fibonacci_taskInit_a0a0a5a0(int8_t i, <!TextGen not found for 'TasksAndSyncs.structure.SharedType'!> results[50]) 
{
  
  struct fibonacci_Args_a0a0a5a0_0* args_a0a0a5a0 = malloc(sizeof(struct fibonacci_Args_a0a0a5a0_0));
  args_a0a0a5a0->i = i;
  args_a0a0a5a0->results = results;
  args_a0a0a5a0->i = i;
  struct GenericDeclarations_Task task1 = {args_a0a0a5a0,&fibonacci_parFun_a0a0a5a0};
  return task1;
}


