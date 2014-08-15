#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdio.h>
#include <stdlib.h>

typedef struct fibonacci_Args_a0a0a2a1 fibonacci_Args_a0a0a2a1_t;
struct fibonacci_Args_a0a0a2a1 {
  int8_t i;
};

typedef struct fibonacci_A fibonacci_A_t;
struct fibonacci_A {
  int32_t a;
};

typedef struct fibonacci_B fibonacci_B_t;
struct fibonacci_B {
  fibonacci_A_t ba;
};

static int32_t fibonacci_calcNthFibo(int8_t n);

static void fibonacci_foo(void);

static int32_t fibonacci_return1(void);

static void* fibonacci_parFun_a0a0a2a1(void* voidArgs);

static GenericTaskDeclarations_Future_t fibonacci_futureInit_a0a0c0b(int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  
  GenericTaskDeclarations_Future_t fiboFutures[FIBONACCI_fiboCount];
  for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
  {
    fiboFutures[i] = fibonacci_futureInit_a0a0c0b(i);
  }
  
  int32_t* results[FIBONACCI_fiboCount];
  for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
  {
    results[i] = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&fiboFutures[i])));
    printf("fibo[%d] = %d\n",i,*(results[i]));
  }
  
  return 0;
}

static int32_t fibonacci_calcNthFibo(int8_t n) 
{
  if ( n == 1 || n == 2 ) 
  {
    return 1;
  }
  return fibonacci_calcNthFibo(n - 1) + fibonacci_calcNthFibo(n - 2);
}

static void fibonacci_foo(void) 
{
  
}

static int32_t fibonacci_return1(void) 
{
  return 1;
}

static void* fibonacci_parFun_a0a0a2a1(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  fibonacci_Args_a0a0a2a1_t* args = ((fibonacci_Args_a0a0a2a1_t*)(voidArgs));
  *result = fibonacci_calcNthFibo((args)->i + 1);
  free(voidArgs);
  return result;
}

static GenericTaskDeclarations_Future_t fibonacci_futureInit_a0a0c0b(int8_t i) 
{
  fibonacci_Args_a0a0a2a1_t* args_a0a0c0b = malloc(sizeof(fibonacci_Args_a0a0a2a1_t));
  args_a0a0c0b->i = i;
  pthread_t pth;
  pthread_create(&pth,0,&fibonacci_parFun_a0a0a2a1,args_a0a0c0b);
  return (GenericTaskDeclarations_Future_t){ .pth =pth};
}

