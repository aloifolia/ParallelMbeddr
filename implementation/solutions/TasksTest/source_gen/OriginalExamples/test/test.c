#include "test.h"


#include "GenericDeclarations.h"
#include <stdlib.h>

struct test_Args_a0b0a {
};

struct test_Args_a0a0b0a {
};

static int32_t test_foo(void);

static void* test_parFun_a0a0b0a(void* voidArgs);

static inline struct GenericDeclarations_Future test_futureInit(void);

static inline struct GenericDeclarations_Task test_taskInit(void);

int32_t main(int32_t argc, char* argv[]) 
{
  
  test_futureInit();
  
  return 42;
}


static int32_t test_foo(void) 
{
  return 0;
}


static void* test_parFun_a0a0b0a(void* voidArgs) 
{
  struct test_Args_a0a0b0a* args = ((struct test_Args_a0a0b0a*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = test_foo();
  return result;
}


static inline struct GenericDeclarations_Future test_futureInit(void) 
{
  struct GenericDeclarations_Task taskie = test_taskInit();
  pthread_t pth;
  pthread_create(&pth,0,taskie.fun,taskie.args);
  struct GenericDeclarations_Future future = { .pth = pth };
  return future;
}


static inline struct GenericDeclarations_Task test_taskInit(void) 
{
  struct test_Args_a0a0b0a* args_a0a0b0a = malloc(sizeof(int32_t));
  struct GenericDeclarations_Task task1 = {args_a0a0b0a,&test_parFun_a0a0b0a};
  return task1;
}


