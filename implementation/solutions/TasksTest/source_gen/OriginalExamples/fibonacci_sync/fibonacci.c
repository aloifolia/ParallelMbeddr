#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdio.h>
#include <stdlib.h>

struct fibonacci_Args_a0a0a1a4a1 {
  int8_t i;
  struct GenericSharedDeclarations_SharedOf_int32_0* slotI;
};

static void fibonacci_calcNthFibo(int8_t n,struct GenericSharedDeclarations_SharedOf_int32_0* result);

static int32_t fibonacci_calcNthFiboRec(int8_t n);

static void* fibonacci_parFun_a0a0a1a4a1(void* voidArgs);

static struct GenericTaskDeclarations_VoidFuture fibonacci_futureInit_a0a0b0e0b(int8_t i,struct GenericSharedDeclarations_SharedOf_int32_0* slotI);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  
  struct GenericTaskDeclarations_VoidFuture fiboFutures[FIBONACCI_fiboCount];
  struct GenericSharedDeclarations_SharedOf_int32_0 slots[FIBONACCI_fiboCount];
  GenericSharedDeclarations_mutexInit_0(((struct GenericSharedDeclarations_SharedOf_int32_0*)(slots)), 40);
  
  for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
  {
    struct GenericSharedDeclarations_SharedOf_int32_0* slotI = &(slots[i]);
    GenericSyncDeclarations_startSyncFor1Mutex(&slotI->mutex);
    {
      fiboFutures[i] = fibonacci_futureInit_a0a0b0e0b(i, slotI);
    }

    GenericSyncDeclarations_stopSyncFor1Mutex(&slotI->mutex);
  }

  
  
  
  
  for ( int8_t __i = 0; __i < FIBONACCI_fiboCount; __i++ )
  {
    GenericTaskDeclarations_joinVoidFuture(&fiboFutures[__i]);
    struct GenericSharedDeclarations_SharedOf_int32_0* slotI = &(slots[__i]);
    GenericSyncDeclarations_startSyncFor1Mutex(&slotI->mutex);
    {
      printf("%d-th fibo is %d\n",__i,slotI->value);
    }

    GenericSyncDeclarations_stopSyncFor1Mutex(&slotI->mutex);
  }

  
  
  return 0;
}


static void fibonacci_calcNthFibo(int8_t n, struct GenericSharedDeclarations_SharedOf_int32_0* result) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&result->mutex);
  {
    result->value = fibonacci_calcNthFiboRec(n);
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&result->mutex);
}


static int32_t fibonacci_calcNthFiboRec(int8_t n) 
{
  if ( n == 1 || n == 2 ) 
  {
    return 1;
  }

  return fibonacci_calcNthFiboRec(n - 1) + fibonacci_calcNthFiboRec(n - 2);
}


static void* fibonacci_parFun_a0a0a1a4a1(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a1a4a1* args = ((struct fibonacci_Args_a0a0a1a4a1*)(voidArgs));
  fibonacci_calcNthFibo((args)->i + 1, (args)->slotI);
  free(voidArgs);
  return 0;
}


static struct GenericTaskDeclarations_VoidFuture fibonacci_futureInit_a0a0b0e0b(int8_t i, struct GenericSharedDeclarations_SharedOf_int32_0* slotI) 
{
  struct fibonacci_Args_a0a0a1a4a1* args_a0a0b0e0b = malloc(sizeof(struct fibonacci_Args_a0a0a1a4a1));
  args_a0a0b0e0b->i = i;
  args_a0a0b0e0b->slotI = slotI;
  pthread_t pth;
  pthread_create(&pth,0,&fibonacci_parFun_a0a0a1a4a1,args_a0a0b0e0b);
  return (struct GenericTaskDeclarations_VoidFuture){ .pth =pth};
}


