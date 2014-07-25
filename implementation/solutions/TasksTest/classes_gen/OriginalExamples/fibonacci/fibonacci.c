#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdio.h>
#include <stdlib.h>

struct fibonacci_Args_a0a0a2a1 {
  int8_t i;
};

struct fibonacci_A {
  int32_t a;
};

struct fibonacci_B {
  struct fibonacci_A ba;
};

static int32_t fibonacci_calcNthFibo(int8_t n);

static void fibonacci_foo(void);

static int32_t fibonacci_return1(void);

static void* fibonacci_parFun_a0a0a2a1(void* voidArgs);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a2a1(int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  
  struct GenericTaskDeclarations_Future fiboFutures[FIBONACCI_fiboCount];
  for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
  {
    fiboFutures[i] = GenericTaskDeclarations_runTaskAndGetFuture(fibonacci_taskInit_a0a0a2a1(i));
  }

  
  int32_t* results[FIBONACCI_fiboCount];
  for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
  {
    results[i] = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&fiboFutures[i])));
    printf("fibo[%d] = %d\n",i,*(results[i]));
  }

  
  return 0;
}


static int32_t fibonacci_calcNthFibo(int8_t n) 
{
  if ( n == 1 || n == 2 ) 
  {
    return 1;
  }

  return fibonacci_calcNthFibo(n - 1) + fibonacci_calcNthFibo(n - 2);
}


static void fibonacci_foo(void) 
{
  
}


static int32_t fibonacci_return1(void) 
{
  return 1;
}


static void* fibonacci_parFun_a0a0a2a1(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  struct fibonacci_Args_a0a0a2a1* args = ((struct fibonacci_Args_a0a0a2a1*)(voidArgs));
  *result = fibonacci_calcNthFibo((args)->i + 1);
  return result;
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a2a1(int8_t i) 
{
  struct fibonacci_Args_a0a0a2a1* args_a0a0a2a1 = malloc(sizeof(struct fibonacci_Args_a0a0a2a1));
  args_a0a0a2a1->i = i;
  return (struct GenericTaskDeclarations_Task){args_a0a0a2a1,&fibonacci_parFun_a0a0a2a1};
}


