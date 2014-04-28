#include "fibonacci.h"


#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>

struct fibonacci_Args_0 {
  int16_t i;
};

struct fibonacci_Task {
  void* args;
  void* (*fun)(void*);
};

struct fibonacci_Future {
  pthread_t pth;
  void* result;
  int8_t finished;
};

static int32_t fibonacci_fibonacci(int16_t index);

static void* fibonacci_parFun_0(void* voidArgs);

int32_t main(int32_t argc, char* argv[]) 
{
  struct fibonacci_Future tasks[50];
  for ( int16_t i = 0; i < 50; ++i )
  {
    /* statements for |fibonacci(i + 1)| */
    struct fibonacci_Args_0* args_0 = ((struct fibonacci_Args_0*)(malloc(sizeof(struct fibonacci_Args_0))));
    
    args_0->i = i + 1;
    struct fibonacci_Task task_0 = {
      .args = args_0,
      .fun = &fibonacci_parFun_0
    };
    
    /* statements for |fibonacci(i + 1)|.run */
    struct fibonacci_Task task_1 = task_0;
    pthread_t pth_0;
    pthread_create(&pth_0, 0, task_1.fun, task_1.args);
    struct fibonacci_Future future_0 = {
      .pth = pth_0,
      .result = 0,
      .finished = 0
    };
    tasks[i] = future_0;
  }

  
  int32_t res = 0;
  for ( int16_t i = 0; i < 50; ++i )
  {
    struct fibonacci_Future* future_1 = &tasks[i];
    if ( !((future_1->finished)) ) 
    {
      pthread_join(future_1->pth,future_1->result);
      future_1->finished = 1;
    }

    int32_t* resI = ((int32_t*)(future_1->result));
    printf("fibonacci %d = %d", i, *resI);
    res += *resI;
    free(resI);
  }

  printf("fibonacci sum(%d) = %d", -1, res);
  
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


static void* fibonacci_parFun_0(void* voidArgs) 
{
  struct fibonacci_Args_0* args = ((struct fibonacci_Args_0*)(voidArgs));
  int32_t* result = ((int32_t*)(malloc(sizeof(int32_t))));
  *result = fibonacci_fibonacci(args->i);
  return result;
}


