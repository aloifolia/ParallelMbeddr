#include "fibonacci.h"


#include "GenericDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

struct fibonacci_Args_a0a0c0a {
  int16_t i;
};

struct fibonacci_Args_a0a0a0c0a {
  int16_t i;
};

static int32_t fibonacci_fibonacci(int16_t index);

static void* fibonacci_parFun_a0a0c0a(void* voidArgs);

static void* fibonacci_parFun_a0a0a0c0a(void* voidArgs);

static inline struct GenericDeclarations_Future fibonacci_futureInit(int16_t i);

static inline struct GenericDeclarations_Task fibonacci_taskInit(int16_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  
  
  for ( int16_t i = 0; i < 50; ++i )
  {
    fibonacci_futureInit(i);
  }

  
  
  return 0;
}


static int32_t fibonacci_fibonacci(int16_t index) 
{
  if ( index == 1 || index == 2 ) 
  {
    return 1;
  }

  int32_t fiboIMinusOne = 1;
  int32_t fiboI = 2;
  for ( int16_t i = 1; i < index; ++i )
  {
    int32_t fiboIPlusOne = fiboIMinusOne + fiboI;
    fiboIMinusOne = fiboI;
    fiboI = fiboIPlusOne;
  }

}


static void* fibonacci_parFun_a0a0c0a(void* voidArgs) 
{
  struct fibonacci_Args_a0a0c0a* args = ((struct fibonacci_Args_a0a0c0a*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_fibonacci((*args).i);
  return result;
}


static void* fibonacci_parFun_a0a0a0c0a(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a0c0a* args = ((struct fibonacci_Args_a0a0a0c0a*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_fibonacci((*args).i);
  return result;
}


static inline struct GenericDeclarations_Future fibonacci_futureInit(int16_t i) 
{
  struct GenericDeclarations_Task taskie = fibonacci_taskInit(i);
  pthread_t pth;
  pthread_create(&pth,0,taskie.fun,taskie.args);
  struct GenericDeclarations_Future future = { .pth = pth };
  return future;
}


static inline struct GenericDeclarations_Task fibonacci_taskInit(int16_t i) 
{
  struct fibonacci_Args_a0a0a0c0a* args_a0a0a0c0a = malloc(sizeof(int32_t));
  args_a0a0a0c0a->i = i;
  struct GenericDeclarations_Task task1 = {args_a0a0a0c0a,&fibonacci_parFun_a0a0a0c0a};
  return task1;
}


