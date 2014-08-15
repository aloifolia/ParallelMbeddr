#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdio.h>
#include <stdlib.h>

typedef struct fibonacci_Args_a0a0a1a0e0b fibonacci_Args_a0a0a1a0e0b_t;
struct fibonacci_Args_a0a0a1a0e0b {
  int8_t i;
  GenericSharedDeclarations_SharedOf_int32_0_t* slotI;
};

static void fibonacci_calcNthFibo(int8_t n, GenericSharedDeclarations_SharedOf_int32_0_t* result);

static int32_t fibonacci_calcNthFiboRec(int8_t n);

static void* fibonacci_parFun_a0a0a1a0e0b(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t fibonacci_futureInit_a0a0b0a4a1(int8_t i, GenericSharedDeclarations_SharedOf_int32_0_t* slotI);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  
  GenericTaskDeclarations_VoidFuture_t fiboFutures[FIBONACCI_fiboCount];
  GenericSharedDeclarations_SharedOf_int32_0_t slots[FIBONACCI_fiboCount];
  GenericSharedDeclarations_mutexInit_0(((GenericSharedDeclarations_SharedOf_int32_0_t*)(slots)), 40);
  
  for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
  {
    {
      GenericSharedDeclarations_SharedOf_int32_0_t* slotI = &(slots[i]);
      GenericSyncDeclarations_startSyncFor1Mutex(&(slotI)->mutex);
      {
        fiboFutures[i] = fibonacci_futureInit_a0a0b0a4a1(i, slotI);
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(slotI)->mutex);
    }
  }
  
  
  
  
  for ( int8_t __i = 0; __i < FIBONACCI_fiboCount; __i++ )
  {
    GenericTaskDeclarations_joinVoidFuture(&fiboFutures[__i]);
    {
      GenericSharedDeclarations_SharedOf_int32_0_t* slotI = &(slots[__i]);
      {
        printf("%d-th fibo is %d\n",__i,slotI->value);
      }
    }
  }
  
  
  return 0;
}

static void fibonacci_calcNthFibo(int8_t n, GenericSharedDeclarations_SharedOf_int32_0_t* result) 
{
  {
    result->value = fibonacci_calcNthFiboRec(n);
  }
}

static int32_t fibonacci_calcNthFiboRec(int8_t n) 
{
  if ( n == 1 || n == 2 ) 
  {
    return 1;
  }
  return fibonacci_calcNthFiboRec(n - 1) + fibonacci_calcNthFiboRec(n - 2);
}

static void* fibonacci_parFun_a0a0a1a0e0b(void* voidArgs) 
{
  fibonacci_Args_a0a0a1a0e0b_t* args = ((fibonacci_Args_a0a0a1a0e0b_t*)(voidArgs));
  fibonacci_calcNthFibo((args)->i + 1, (args)->slotI);
  free(voidArgs);
  return 0;
}

static GenericTaskDeclarations_VoidFuture_t fibonacci_futureInit_a0a0b0a4a1(int8_t i, GenericSharedDeclarations_SharedOf_int32_0_t* slotI) 
{
  fibonacci_Args_a0a0a1a0e0b_t* args_a0a0b0a4a1 = malloc(sizeof(fibonacci_Args_a0a0a1a0e0b_t));
  args_a0a0b0a4a1->i = i;
  args_a0a0b0a4a1->slotI = slotI;
  pthread_t pth;
  pthread_create(&pth,0,&fibonacci_parFun_a0a0a1a0e0b,args_a0a0b0a4a1);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

