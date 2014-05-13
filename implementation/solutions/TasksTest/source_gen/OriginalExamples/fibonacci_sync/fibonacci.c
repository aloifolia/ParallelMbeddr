#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0a0a7a0 {
  int8_t i;
  struct GenericSharedDeclarations_SharedInt32Pointer_0 results[50];
  int8_t i;
};

struct fibonacci_Args_a0a0a7a0_0 {
  int8_t i;
  struct GenericSharedDeclarations_SharedInt32Pointer_0 results[50];
  int8_t i;
};

static void fibonacci_foo(void);

static void fibonacci_calcNthFibo(int8_t n,struct GenericSharedDeclarations_SharedInt32Pointer_0 result);

static int32_t fibonacci_calcNthFiboRec(int8_t n);

static inline void fibonacci_init_results_0(struct GenericSharedDeclarations_SharedInt32Pointer_0* results);

static inline void fibonacci_destroy_results_0(struct GenericSharedDeclarations_SharedInt32Pointer_0* results);

static void fibonacci_startSync_0(pthread_mutex_t* mutex_0);

static void fibonacci_stopSync_0(pthread_mutex_t* mutex_1);

static void fibonacci_startSync_1(pthread_mutex_t* mutex_3);

static void fibonacci_stopSync_1(pthread_mutex_t* mutex_4);

static void* fibonacci_parFun_a0a0a7a0(void* voidArgs);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a7a0(struct GenericSharedDeclarations_SharedInt32Pointer_0 results[50],int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  fibonacci_initGlobalMutexes_0();
  
  struct GenericTaskDeclarations_VoidFuture fiboFutures[50];
  struct GenericSharedDeclarations_SharedInt32Pointer_0 results[50];
  fibonacci_init_results_0(results);
  0;
  
  for ( int8_t i = 0; i < 50; ++i )
  {
    fiboFutures[i] = GenericTaskDeclarations_runTaskAndGetVoidFuture(fibonacci_taskInit_a0a0a7a0(results, i));
  }

  
  for ( int8_t i = 0; i < 50; ++i )
  {
    GenericTaskDeclarations_joinVoidFuture(&fiboFutures[i]);
    pthread_mutex_t* mutex_2 = &(results.mutex);;
  }

  
  fibonacci_destroyGlobalMutexes_0();
  fibonacci_destroy_results_0(results);
  return 0;
}


static void fibonacci_foo(void) 
{
  
}


static void fibonacci_calcNthFibo(int8_t n, struct GenericSharedDeclarations_SharedInt32Pointer_0 result) 
{
  pthread_mutex_t* mutex_5 = &(result.mutex);;
}


static int32_t fibonacci_calcNthFiboRec(int8_t n) 
{
  if ( n == 1 || n == 2 ) 
  {
    return 1;
  }

  return fibonacci_calcNthFiboRec(n - 1) + fibonacci_calcNthFiboRec(n - 2);
}


void fibonacci_initGlobalMutexes_0(void) 
{
}


void fibonacci_destroyGlobalMutexes_0(void) 
{
}


static  void fibonacci_init_results_0(struct GenericSharedDeclarations_SharedInt32Pointer_0* results) 
{
  for ( int8_t __i_1 = 0; __i_1 < 50; __i_1++ )
  {
    GenericSharedDeclarations_initMutex_0(&results[__i_1].mutexAttribute, &results[__i_1].mutex);
  }

}


static  void fibonacci_destroy_results_0(struct GenericSharedDeclarations_SharedInt32Pointer_0* results) 
{
  for ( int8_t __i_1 = 0; __i_1 < 50; __i_1++ )
  {
    GenericSharedDeclarations_destroyMutex_0(&results[__i_1].mutex);
  }

}


static void fibonacci_startSync_0(pthread_mutex_t* mutex_0) 
{
  while (1)
  {
    if ( mutex_try_lock(mutex_0) != 0 ) 
    {
      continue;
    }

    break;
  }

}


static void fibonacci_stopSync_0(pthread_mutex_t* mutex_1) 
{
  mutex_unlock(mutex_1);
}


static void fibonacci_startSync_1(pthread_mutex_t* mutex_3) 
{
  while (1)
  {
    if ( mutex_try_lock(mutex_3) != 0 ) 
    {
      continue;
    }

    break;
  }

}


static void fibonacci_stopSync_1(pthread_mutex_t* mutex_4) 
{
  mutex_unlock(mutex_4);
}


static void* fibonacci_parFun_a0a0a7a0(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a7a0_0* args = ((struct fibonacci_Args_a0a0a7a0_0*)(voidArgs));
  fibonacci_calcNthFibo((???).i + 1, (???).results[(*args).i]);
  return 0;
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0a7a0(struct GenericSharedDeclarations_SharedInt32Pointer_0 results[50], int8_t i) 
{
  
  struct fibonacci_Args_a0a0a7a0_0* args_a0a0a7a0 = malloc(sizeof(struct fibonacci_Args_a0a0a7a0_0));
  args_a0a0a7a0->i = i;
  args_a0a0a7a0->results = results;
  args_a0a0a7a0->i = i;
  struct GenericTaskDeclarations_Task task1 = {args_a0a0a7a0,&fibonacci_parFun_a0a0a7a0};
  return task1;
}


