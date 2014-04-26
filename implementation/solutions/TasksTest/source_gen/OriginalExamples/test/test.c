#include "test.h"


#include "GenericDeclarations.h"
#include <stdlib.h>

struct test_Args_a0a0b0a {
};

struct test_Args_a0a0a0b0a {
};

struct test_Args_a0a0a0a0b0a {
};

struct test_Args_a0a0a0a0a0b0a {
};

struct test_A {
  int32_t b;
};

int32_t test_b;

static int32_t test_foo(void);

static void test_bar(void);

static void* test_parFun_a0a0b0a(void* voidArgs);

static void* test_parFun_a0a0a0b0a(void* voidArgs);

static void* test_parFun_a0a0a0a0b0a(void* voidArgs);

static void* test_parFun_a0a0a0a0a0b0a(void* voidArgs);

static struct test_A test_doA(void);

static inline int32_t* test_futureResult(void);

static inline struct GenericDeclarations_Future test_futureJoin(void);

static inline struct GenericDeclarations_Future test_futureInit(void);

static inline struct GenericDeclarations_Task test_taskInit_a0a0a0a0a0b0a(void);

int32_t main(int32_t argc, char* argv[]) 
{
  
  test_futureResult();
  
  return 0;
}


static int32_t test_foo(void) 
{
  return 0;
}


static void test_bar(void) 
{
  
}


static void* test_parFun_a0a0b0a(void* voidArgs) 
{
  struct test_Args_a0a0b0a* args = ((struct test_Args_a0a0b0a*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = test_foo();
  return result;
}


static void* test_parFun_a0a0a0b0a(void* voidArgs) 
{
  struct test_Args_a0a0a0b0a* args = ((struct test_Args_a0a0a0b0a*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = test_foo();
  return result;
}


static void* test_parFun_a0a0a0a0b0a(void* voidArgs) 
{
  struct test_Args_a0a0a0a0b0a* args = ((struct test_Args_a0a0a0a0b0a*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = test_foo();
  return result;
}


static void* test_parFun_a0a0a0a0a0b0a(void* voidArgs) 
{
  struct test_Args_a0a0a0a0a0b0a* args = ((struct test_Args_a0a0a0a0a0b0a*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = test_foo();
  return result;
}


static struct test_A test_doA(void) 
{
  return ((struct test_A)({
  }));
}


static inline int32_t* test_futureResult(void) 
{
  struct GenericDeclarations_Future future = test_futureJoin();
  if ( !((future.finished)) ) 
  {
    pthread_join(&(future.pth),0);
  }

  return future.result;
}


static inline struct GenericDeclarations_Future test_futureJoin(void) 
{
  struct GenericDeclarations_Future future = test_futureInit();
  if ( !((future.finished)) ) 
  {
    pthread_join(&(future.pth),0);
    future.finished = 1;
  }

  return future;
}


static inline struct GenericDeclarations_Future test_futureInit(void) 
{
  struct GenericDeclarations_Task task = test_taskInit_a0a0a0a0a0b0a();
  pthread_t pth;
  pthread_create(&pth,0,task.fun,task.args);
  struct GenericDeclarations_Future future = { .pth = pth };
  return future;
}


static inline struct GenericDeclarations_Task test_taskInit_a0a0a0a0a0b0a(void) 
{
  struct test_Args_a0a0a0a0a0b0a* args_a0a0a0a0a0b0a = malloc(sizeof(int32_t));
  struct GenericDeclarations_Task task1 = {args_a0a0a0a0a0b0a,&test_parFun_a0a0a0a0a0b0a};
  return task1;
}


