#include "fibonacci.h"


#include "GenericDeclarations.h"
#include <stdlib.h>
#include <pthread.h>

struct fibonacci_Args_a0a0a4a0 {
  int8_t i;
  <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> results[50];
  int8_t i;
};

struct fibonacci_Args_a0a0a4a0_0 {
  int8_t i;
  <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> results[50];
  int8_t i;
};

static void fibonacci_calcNthFibo(int8_t n,<!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> result);

static int32_t fibonacci_calcNthFiboRec(int8_t n);

static void* fibonacci_parFun_a0a0a4a0(void* voidArgs);

static inline struct GenericDeclarations_Task fibonacci_taskInit_a0a0a4a0(int8_t i,<!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> results[50]);

static inline struct GenericDeclarations_Future fibonacci_futureJoin(struct GenericDeclarations_Future fiboFutures[50],int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  
  struct GenericDeclarations_Future fiboFutures[50];
  <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> results[50];
  
  for ( int8_t i = 0; i < 50; ++i )
  {
    fiboFutures[i] = runTaskAndGetFuture(fibonacci_taskInit_a0a0a4a0(i, results));
  }

  
  for ( int8_t i = 0; i < 50; ++i )
  {
    fibonacci_futureJoin(fiboFutures, i);
    <!TextGen not found for 'TasksAndSyncs.structure.Sync'!>;
  }

  
  return 0;
}


static void fibonacci_calcNthFibo(int8_t n, <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> result) 
{
  <!TextGen not found for 'TasksAndSyncs.structure.Sync'!>;
}


static int32_t fibonacci_calcNthFiboRec(int8_t n) 
{
  if ( n == 1 || n == 2 ) 
  {
    return 1;
  }

  return fibonacci_calcNthFiboRec(n - 1) + fibonacci_calcNthFiboRec(n - 2);
}


static void* fibonacci_parFun_a0a0a4a0(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a4a0_0* args = ((struct fibonacci_Args_a0a0a4a0_0*)(voidArgs));
  void* result = malloc(sizeof(void));
  *result = fibonacci_calcNthFibo((???).i + 1, (???).results[(*args).i]);
  return result;
}


static inline struct GenericDeclarations_Task fibonacci_taskInit_a0a0a4a0(int8_t i, <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> results[50]) 
{
  struct fibonacci_Args_a0a0a4a0_0* args_a0a0a4a0 = malloc(sizeof(void));
  args_a0a0a4a0->i = i;
  args_a0a0a4a0->results = results;
  args_a0a0a4a0->i = i;
  struct GenericDeclarations_Task task1 = {args_a0a0a4a0,&fibonacci_parFun_a0a0a4a0};
  return task1;
}


static inline struct GenericDeclarations_Future fibonacci_futureJoin(struct GenericDeclarations_Future fiboFutures[50], int8_t i) 
{
  struct GenericDeclarations_Future future = fiboFutures[i];
  if ( !((future.finished)) ) 
  {
    pthread_join(&(future.pth),0);
    future.finished = 1;
  }

  return future;
}


