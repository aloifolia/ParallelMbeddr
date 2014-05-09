#include "fibonacci.h"


#include "GenericDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0a0a2a0 {
  int8_t i;
};

struct fibonacci_Args_a0a0a0a {
};

struct fibonacci_Args_a0a0a0a_0 {
};

struct fibonacci_Args_a0a0a2a0_0 {
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

static void* fibonacci_parFun_a0a0a2a0(void* voidArgs);

static void* fibonacci_parFun_a0a0a0a(void* voidArgs);

static inline struct GenericDeclarations_Task fibonacci_taskInit_a0a0a0a(void);

static inline struct GenericDeclarations_Task fibonacci_taskInit_a0a0a2a0(int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  GenericDeclarations_saveAndJoinVoidFuture((GenericDeclarations_runTaskAndGetVoidFuture(fibonacci_taskInit_a0a0a0a())));
  struct GenericDeclarations_Future fiboFutures[50];
  for ( int8_t i = 0; i < 50; ++i )
  {
    fiboFutures[i] = GenericDeclarations_runTaskAndGetFuture(fibonacci_taskInit_a0a0a2a0(i));
  }

  
  int32_t* results[50];
  for ( int8_t i = 0; i < 50; ++i )
  {
    GenericDeclarations_joinFuture(&fiboFutures[i]);
    results[i] = ((int32_t*)(GenericDeclarations_getFutureResult(&fiboFutures[i])));
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


static void* fibonacci_parFun_a0a0a2a0(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a2a0_0* args = ((struct fibonacci_Args_a0a0a2a0_0*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_calcNthFibo((*args).i + 1);
  return result;
}


static void* fibonacci_parFun_a0a0a0a(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a0a_0* args = ((struct fibonacci_Args_a0a0a0a_0*)(voidArgs));
  fibonacci_foo();
  return 0;
}


static inline struct GenericDeclarations_Task fibonacci_taskInit_a0a0a0a(void) 
{
  
  struct fibonacci_Args_a0a0a0a_0* args_a0a0a0a = malloc(sizeof(struct fibonacci_Args_a0a0a0a_0));
  struct GenericDeclarations_Task task1 = {args_a0a0a0a,&fibonacci_parFun_a0a0a0a};
  return task1;
}


static inline struct GenericDeclarations_Task fibonacci_taskInit_a0a0a2a0(int8_t i) 
{
  
  struct fibonacci_Args_a0a0a2a0_0* args_a0a0a2a0 = malloc(sizeof(struct fibonacci_Args_a0a0a2a0_0));
  args_a0a0a2a0->i = i;
  struct GenericDeclarations_Task task1 = {args_a0a0a2a0,&fibonacci_parFun_a0a0a2a0};
  return task1;
}


