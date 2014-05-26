#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0a0a2a0 {
  int8_t i;
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

static int32_t fibonacci_return1(void);

static void* fibonacci_parFun_a0a0a2a0(void* voidArgs);

static void* fibonacci_parFun_a0a0a2a0_0(void* voidArgs);

static inline void fibonacci_init_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures);

static inline void fibonacci_destroy_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a2a0(int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  
  struct GenericTaskDeclarations_Future fiboFutures[50];
  fibonacci_init_fiboFutures_0(fiboFutures);
  for ( int8_t i = 0; i < 50; ++i )
  {
    fiboFutures[i] = GenericTaskDeclarations_runTaskAndGetFuture(fibonacci_taskInit_a0a0a2a0(i));
  }

  
  int32_t* results[50];
  for ( int8_t i = 0; i < 50; ++i )
  {
    GenericTaskDeclarations_joinFuture(&fiboFutures[i]);
    results[i] = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&fiboFutures[i])));
  }

  
  fibonacci_destroy_fiboFutures_0(fiboFutures);
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


static void* fibonacci_parFun_a0a0a2a0(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  struct fibonacci_Args_a0a0a2a0* args = ((struct fibonacci_Args_a0a0a2a0*)(voidArgs));
  *result = fibonacci_calcNthFibo((args)->i + 1);
  return result;
}


static void* fibonacci_parFun_a0a0a2a0_0(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  struct fibonacci_Args_a0a0a2a0_0* args = ((struct fibonacci_Args_a0a0a2a0_0*)(voidArgs));
  *result = fibonacci_calcNthFibo((args)->i + 1);
  return result;
}


static  void fibonacci_init_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures) 
{
  for ( int8_t __i_0 = 0; __i_0 < 50; __i_0++ )
  {
  }

}


static  void fibonacci_destroy_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures) 
{
  for ( int8_t __i_0 = 0; __i_0 < 50; __i_0++ )
  {
  }

}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a2a0(int8_t i) 
{
  struct fibonacci_Args_a0a0a2a0_0* args_a0a0a2a0 = malloc(sizeof(struct fibonacci_Args_a0a0a2a0_0));
  args_a0a0a2a0->i = i;
  struct GenericTaskDeclarations_Task task = {args_a0a0a2a0,&fibonacci_parFun_a0a0a2a0_0};
  return task;
}


