#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0a0a0a {
};

struct fibonacci_Args_a0a1a0 {
};

struct fibonacci_Args_a0a0a3a0 {
  int8_t i;
};

struct fibonacci_Args_a0a0a0a_0 {
};

struct fibonacci_Args_a0a0b0a {
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

static void* fibonacci_parFun_a0a1a0(void* voidArgs);

static void* fibonacci_parFun_a0a0a3a0(void* voidArgs);

static void* fibonacci_parFun_a0a0a0a(void* voidArgs);

static void* fibonacci_parFun_a0a0b0a(void* voidArgs);

static void* fibonacci_parFun_a0a0a3a0_0(void* voidArgs);

static void* fibonacci_parFun_a0a0a0a_0(void* voidArgs);

static inline void fibonacci_init_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures);

static inline void fibonacci_destroy_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a0a(void);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0b0a(void);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a3a0(int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  GenericTaskDeclarations_saveAndJoinVoidFuture((GenericTaskDeclarations_runTaskAndGetVoidFuture(fibonacci_taskInit_a0a0a0a())));
  int32_t* singleFiboResult = ((int32_t*)(GenericTaskDeclarations_saveFutureAndGetResult(GenericTaskDeclarations_runTaskAndGetFuture(fibonacci_taskInit_a0a0b0a()))));
  struct GenericTaskDeclarations_Future fiboFutures[50];
  fibonacci_init_fiboFutures_0(fiboFutures);
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


static void* fibonacci_parFun_a0a1a0(void* voidArgs) 
{
  struct fibonacci_Args_a0a1a0* args = ((struct fibonacci_Args_a0a1a0*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_calcNthFibo(42);
  return result;
}


static void* fibonacci_parFun_a0a0a3a0(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a3a0* args = ((struct fibonacci_Args_a0a0a3a0*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_calcNthFibo((*args).i + 1);
  return result;
}


static void* fibonacci_parFun_a0a0a0a(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a0a* args = ((struct fibonacci_Args_a0a0a0a*)(voidArgs));
  fibonacci_foo();
  return 0;
}


static void* fibonacci_parFun_a0a0b0a(void* voidArgs) 
{
  struct fibonacci_Args_a0a0b0a* args = ((struct fibonacci_Args_a0a0b0a*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_calcNthFibo(42);
  return result;
}


static void* fibonacci_parFun_a0a0a3a0_0(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a3a0_0* args = ((struct fibonacci_Args_a0a0a3a0_0*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_calcNthFibo((*args).i + 1);
  return result;
}


static void* fibonacci_parFun_a0a0a0a_0(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a0a_0* args = ((struct fibonacci_Args_a0a0a0a_0*)(voidArgs));
  fibonacci_foo();
  return 0;
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


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a0a(void) 
{
  
  struct fibonacci_Args_a0a0a0a_0* args_a0a0a0a = malloc(sizeof(struct fibonacci_Args_a0a0a0a_0));
  struct GenericTaskDeclarations_Task task1 = {args_a0a0a0a,&fibonacci_parFun_a0a0a0a_0};
  return task1;
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0b0a(void) 
{
  
  struct fibonacci_Args_a0a0b0a* args_a0a0b0a = malloc(sizeof(struct fibonacci_Args_a0a0b0a));
  struct GenericTaskDeclarations_Task task1 = {args_a0a0b0a,&fibonacci_parFun_a0a0b0a};
  return task1;
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a3a0(int8_t i) 
{
  
  struct fibonacci_Args_a0a0a3a0_0* args_a0a0a3a0 = malloc(sizeof(struct fibonacci_Args_a0a0a3a0_0));
  args_a0a0a3a0->i = i;
  struct GenericTaskDeclarations_Task task1 = {args_a0a0a3a0,&fibonacci_parFun_a0a0a3a0_0};
  return task1;
}


