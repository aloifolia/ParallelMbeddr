#include "test.h"


#include "GenericDeclarations.h"
#include <stdlib.h>

struct test_Args_a0b0a {
};

struct test_Args_a0b0a_0 {
};

static int32_t test_foo(void);

static void* test_parFun_a0b0a(void* voidArgs);

static inline struct GenericDeclarations_Task test_taskInit_a0b0a(void);

int32_t main(int32_t argc, char* argv[]) 
{
  
  runTaskAndGetFuture(test_taskInit_a0b0a());
  {
  };
  
  return 0;
}


static int32_t test_foo(void) 
{
  return 0;
}


static void* test_parFun_a0b0a(void* voidArgs) 
{
  struct test_Args_a0b0a_0* args = ((struct test_Args_a0b0a_0*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = test_foo();
  return result;
}


static inline struct GenericDeclarations_Task test_taskInit_a0b0a(void) 
{
  struct test_Args_a0b0a_0* args_a0b0a = malloc(sizeof(int32_t));
  struct GenericDeclarations_Task task1 = {args_a0b0a,&test_parFun_a0b0a};
  return task1;
}


