#include "fibonacci.h"


#include "GenericDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0b0a {
};

struct fibonacci_Args_a0a0b0a {
};

static void fibonacci_foo(void);

static void* fibonacci_parFun_a0b0a(void* voidArgs);

static void* fibonacci_parFun_a0a0b0a(void* voidArgs);

static inline struct GenericDeclarations_Future fibonacci_blockexpr_main_3(void);

static inline struct GenericDeclarations_Task fibonacci_blockexpr_main_9(void);

int32_t main(int32_t argc, char* argv[]) 
{
  
  fibonacci_blockexpr_main_3();
  
  return 0;
}


static void fibonacci_foo(void) 
{
  
}


static void* fibonacci_parFun_a0b0a(void* voidArgs) 
{
  struct fibonacci_Args_a0b0a* args = ((struct fibonacci_Args_a0b0a*)(voidArgs));
  void* result = malloc(sizeof(void));
  *result = fibonacci_foo();
  return result;
}


static void* fibonacci_parFun_a0a0b0a(void* voidArgs) 
{
  struct fibonacci_Args_a0a0b0a* args = ((struct fibonacci_Args_a0a0b0a*)(voidArgs));
  void* result = malloc(sizeof(void));
  *result = fibonacci_foo();
  return result;
}


static inline struct GenericDeclarations_Future fibonacci_blockexpr_main_3(void) 
{
  Task taskie = fibonacci_blockexpr_main_9();
  pthread_t pth;
  pthread_create(&pth,0,taskie.fun,taskie.args);
  struct GenericDeclarations_Future future = { pth = pth; };
  return future;
}


static inline struct GenericDeclarations_Task fibonacci_blockexpr_main_9(void) 
{
  struct fibonacci_Args_a0a0b0a* args_a0a0b0a = malloc(sizeof(void));
  Task task1 = {args,&fibonacci_parFun_a0a0b0a;
  return task1;
}


