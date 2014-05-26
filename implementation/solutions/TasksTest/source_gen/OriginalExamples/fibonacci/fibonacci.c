#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdio.h>
#include <stdlib.h>

struct fibonacci_Args_a0a0a0b {
};

struct fibonacci_Args_a0a1a1 {
};

struct fibonacci_Args_a0a0a4a1 {
  int8_t i;
};

struct fibonacci_Args_a0a0a0b_0 {
};

struct fibonacci_Args_a0a0b0b {
};

struct fibonacci_Args_a0a0a4a1_0 {
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

static void* fibonacci_parFun_a0a1a1(void* voidArgs);

static void* fibonacci_parFun_a0a0a4a1(void* voidArgs);

static void* fibonacci_parFun_a0a0a0b(void* voidArgs);

static void* fibonacci_parFun_a0a0b0b(void* voidArgs);

static void* fibonacci_parFun_a0a0a4a1_0(void* voidArgs);

static void* fibonacci_parFun_a0a0a0b_0(void* voidArgs);

static inline void fibonacci_init_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures);

static inline void fibonacci_destroy_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a0b(void);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0b0b(void);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a4a1(int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  GenericTaskDeclarations_saveAndJoinVoidFuture((GenericTaskDeclarations_runTaskAndGetVoidFuture(fibonacci_taskInit_a0a0a0b())));
  int32_t* singleFiboResult = ((int32_t*)(GenericTaskDeclarations_saveFutureAndGetResult(GenericTaskDeclarations_runTaskAndGetFuture(fibonacci_taskInit_a0a0b0b()))));
  
  struct GenericTaskDeclarations_Future fiboFutures[FIBONACCI_fiboCount];
  fibonacci_init_fiboFutures_0(fiboFutures);
  for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
  {
    fiboFutures[i] = GenericTaskDeclarations_runTaskAndGetFuture(fibonacci_taskInit_a0a0a4a1(i));
  }

  
  int32_t* results[FIBONACCI_fiboCount];
  for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
  {
    results[i] = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&fiboFutures[i])));
    printf("fibo[%d] = %d\n",i,*(results[i]));
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


static void* fibonacci_parFun_a0a1a1(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_return1();
  return result;
}


static void* fibonacci_parFun_a0a0a4a1(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  struct fibonacci_Args_a0a0a4a1* args = ((struct fibonacci_Args_a0a0a4a1*)(voidArgs));
  *result = fibonacci_calcNthFibo((args)->i + 1);
  return result;
}


static void* fibonacci_parFun_a0a0a0b(void* voidArgs) 
{
  fibonacci_foo();
  return 0;
}


static void* fibonacci_parFun_a0a0b0b(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_return1();
  return result;
}


static void* fibonacci_parFun_a0a0a4a1_0(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  struct fibonacci_Args_a0a0a4a1_0* args = ((struct fibonacci_Args_a0a0a4a1_0*)(voidArgs));
  *result = fibonacci_calcNthFibo((args)->i + 1);
  return result;
}


static void* fibonacci_parFun_a0a0a0b_0(void* voidArgs) 
{
  fibonacci_foo();
  return 0;
}


static  void fibonacci_init_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures) 
{
  for ( int8_t __i_0 = 0; __i_0 < FIBONACCI_fiboCount; __i_0++ )
  {
  }

}


static  void fibonacci_destroy_fiboFutures_0(struct GenericTaskDeclarations_Future* fiboFutures) 
{
  for ( int8_t __i_0 = 0; __i_0 < FIBONACCI_fiboCount; __i_0++ )
  {
  }

}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a0b(void) 
{
  struct GenericTaskDeclarations_Task task = {0,&fibonacci_parFun_a0a0a0b_0};
  return task;
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0b0b(void) 
{
  struct GenericTaskDeclarations_Task task = {0,&fibonacci_parFun_a0a0b0b};
  return task;
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a4a1(int8_t i) 
{
  struct fibonacci_Args_a0a0a4a1_0* args_a0a0a4a1 = malloc(sizeof(struct fibonacci_Args_a0a0a4a1_0));
  args_a0a0a4a1->i = i;
  struct GenericTaskDeclarations_Task task = {args_a0a0a4a1,&fibonacci_parFun_a0a0a4a1_0};
  return task;
}


