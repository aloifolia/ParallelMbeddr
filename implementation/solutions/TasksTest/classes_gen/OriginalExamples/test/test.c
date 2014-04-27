#include "test.h"


#include "GenericDeclarations.h"
#include <stdlib.h>

struct test_Args_a0a2a0 {
};

struct test_Args_a0a0b0a {
};

struct test_Args_a0a0a0b0a {
};

struct test_Args_a0a0a2a0 {
};

struct test_Args_a0a0a0a0b0a {
};

struct test_Args_a0a0a0a2a0 {
};

struct test_Args_a0a0a0a0a0b0a {
};

static int32_t test_foo(void);

static void test_bar(void);

static void* test_parFun_a0a0a0a2a0(void* voidArgs);

static void* test_parFun_a0a0a0a0a0b0a(void* voidArgs);

static inline ??? test_futureResult(void);

static inline struct GenericDeclarations_Future test_futureJoin(void);

static inline struct GenericDeclarations_Future test_futureInit(void);

static inline struct GenericDeclarations_Task test_taskInit_1243t_a0a0a0a0a0b0a(void);

static inline struct GenericDeclarations_Future test_futureJoin(void);

static inline struct GenericDeclarations_Future test_futureInit(void);

static inline struct GenericDeclarations_Task test_taskInit_1243t_a0a0a0a2a0(void);

int32_t main(int32_t argc, char* argv[]) 
{
  
  test_futureResult();
  test_futureJoin();
  
  return 0;
}


static int32_t test_foo(void) 
{
  return 0;
}


static void test_bar(void) 
{
  
}


static void* test_parFun_a0a0a0a2a0(void* voidArgs) 
{
  struct test_Args_a0a0a0a2a0* args = ((struct test_Args_a0a0a0a2a0*)(voidArgs));
  void* result = malloc(sizeof(void));
  *result = test_bar();
  return result;
}


static void* test_parFun_a0a0a0a0a0b0a(void* voidArgs) 
{
  struct test_Args_a0a0a0a0a0b0a* args = ((struct test_Args_a0a0a0a0a0b0a*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = test_foo();
  return result;
}


static inline ??? test_futureResult(void) 
{
  struct GenericDeclarations_Future future = test_futureJoin();
  if ( !((future.finished)) ) 
  {
    pthread_join(future.pth,0);
  }

  return future.result;
}


static inline struct GenericDeclarations_Future test_futureJoin(void) 
{
  struct GenericDeclarations_Future future = test_futureInit();
  if ( !((future.finished)) ) 
  {
    pthread_join(future.pth,0);
    future.finished = 1;
  }

  return future;
}


static inline struct GenericDeclarations_Future test_futureInit(void) 
{
  struct GenericDeclarations_Task taskie = test_taskInit_1243t_a0a0a0a0a0b0a();
  pthread_t pth;
  pthread_create(&pth,0,taskie.fun,taskie.args);
  struct GenericDeclarations_Future future = { .pth = pth };
  return future;
}


static inline struct GenericDeclarations_Task test_taskInit_1243t_a0a0a0a0a0b0a(void) 
{
  struct GenericDeclarations_Task task1 = {0,&test_parFun_a0a0a0a0a0b0a};
  return task1;
}


static inline struct GenericDeclarations_Future test_futureJoin(void) 
{
  struct GenericDeclarations_Future future = test_futureInit();
  if ( !((future.finished)) ) 
  {
    pthread_join(future.pth,0);
    future.finished = 1;
  }

  return future;
}


static inline struct GenericDeclarations_Future test_futureInit(void) 
{
  struct GenericDeclarations_Task taskie = test_taskInit_1243t_a0a0a0a2a0();
  pthread_t pth;
  pthread_create(&pth,0,taskie.fun,taskie.args);
  struct GenericDeclarations_Future future = { .pth = pth };
  return future;
}


static inline struct GenericDeclarations_Task test_taskInit_1243t_a0a0a0a2a0(void) 
{
  struct GenericDeclarations_Task task1 = {0,&test_parFun_a0a0a0a2a0};
  return task1;
}

