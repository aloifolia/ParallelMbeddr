#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0a0a3a0 {
  int8_t i;
};

struct fibonacci_Args_a0a0b0a {
};

struct fibonacci_Args_a0a0b0a_0 {
};

struct fibonacci_Args_a0a0a3a0_0 {
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

static void* fibonacci_parFun_a0a0a3a0(void* voidArgs);

static void* fibonacci_parFun_a0a0b0a(void* voidArgs);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0b0a(void);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a3a0(int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  fibonacci_initGlobalMutexes_0();
  GenericTaskDeclarations_saveAndJoinVoidFuture((GenericTaskDeclarations_runTaskAndGetVoidFuture(fibonacci_taskInit_a0a0b0a())));
  struct GenericTaskDeclarations_Future fiboFutures[50];
  for ( int8_t i = 0; i < 50; ++i )
  {
    fiboFutures[i] = GenericTaskDeclarations_runTaskAndGetFuture(fibonacci_taskInit_a0a0a3a0(i));
  }

  
  int32_t* results[50];
  for ( int8_t i = 0; i < 50; ++i )
  {
    GenericTaskDeclarations_joinFuture(&fiboFutures[i]);
    results[i] = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&fiboFutures[i])));
  }

  
  fibonacci_destroyGlobalMutexes_0();
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


void fibonacci_initGlobalMutexes_0(void) 
{
}


void fibonacci_destroyGlobalMutexes_0(void) 
{
}


static void* fibonacci_parFun_a0a0a3a0(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a3a0_0* args = ((struct fibonacci_Args_a0a0a3a0_0*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_calcNthFibo((*args).i + 1);
  return result;
}


static void* fibonacci_parFun_a0a0b0a(void* voidArgs) 
{
  struct fibonacci_Args_a0a0b0a_0* args = ((struct fibonacci_Args_a0a0b0a_0*)(voidArgs));
  fibonacci_foo();
  return 0;
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0b0a(void) 
{
  
  struct fibonacci_Args_a0a0b0a_0* args_a0a0b0a = malloc(sizeof(struct fibonacci_Args_a0a0b0a_0));
  struct GenericTaskDeclarations_Task task1 = {args_a0a0b0a,&fibonacci_parFun_a0a0b0a};
  return task1;
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a3a0(int8_t i) 
{
  
  struct fibonacci_Args_a0a0a3a0_0* args_a0a0a3a0 = malloc(sizeof(struct fibonacci_Args_a0a0a3a0_0));
  args_a0a0a3a0->i = i;
  struct GenericTaskDeclarations_Task task1 = {args_a0a0a3a0,&fibonacci_parFun_a0a0a3a0};
  return task1;
}


