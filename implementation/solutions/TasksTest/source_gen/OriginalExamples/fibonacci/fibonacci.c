#include "fibonacci.h"


#include "GenericDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0a3a0 {
  int16_t i;
};

static int32_t fibonacci_fibonacci(int16_t index);

static void* fibonacci_parFun_a0a3a0(void* voidArgs);

static inline struct GenericDeclarations_Task fibonacci_taskInit(int16_t i);

static inline struct GenericDeclarations_Future fibonacci_futureInit(struct GenericDeclarations_Task temp);

static inline struct GenericDeclarations_Future fibonacci_futureJoin(struct GenericDeclarations_Future tasks[50],int16_t j);

int32_t main(int32_t argc, char* argv[]) 
{
  
  struct GenericDeclarations_Future tasks[50];
  
  for ( int16_t i = 0; i < 50; ++i )
  {
    struct GenericDeclarations_Task temp = fibonacci_taskInit(i);
    tasks[i] = fibonacci_futureInit(temp);
  }

  
  int32_t res = 0;
  for ( int16_t j = 0; j < 50; ++j )
  {
    fibonacci_futureJoin(tasks, j);
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


static void* fibonacci_parFun_a0a3a0(void* voidArgs) 
{
  struct fibonacci_Args_a0a3a0* args = ((struct fibonacci_Args_a0a3a0*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = fibonacci_fibonacci((*args).i);
  return result;
}


static inline struct GenericDeclarations_Task fibonacci_taskInit(int16_t i) 
{
  struct fibonacci_Args_a0a3a0* args_a0a3a0 = malloc(sizeof(int32_t));
  args_a0a3a0->i = i;
  struct GenericDeclarations_Task task1 = {args_a0a3a0,&fibonacci_parFun_a0a3a0};
  return task1;
}


static inline struct GenericDeclarations_Future fibonacci_futureInit(struct GenericDeclarations_Task temp) 
{
  struct GenericDeclarations_Task taskie = temp;
  pthread_t pth;
  pthread_create(&pth,0,taskie.fun,taskie.args);
  struct GenericDeclarations_Future future = { .pth = pth };
  return future;
}


static inline struct GenericDeclarations_Future fibonacci_futureJoin(struct GenericDeclarations_Future tasks[50], int16_t j) 
{
  struct GenericDeclarations_Future* future = &tasks[j];
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,&future->result);
    future->finished = 1;
  }

  return *future;
}


