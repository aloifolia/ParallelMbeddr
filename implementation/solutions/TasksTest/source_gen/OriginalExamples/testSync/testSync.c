#include "testSync.h"


#include "testSync2.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

static struct GenericSharedDeclarations_SharedOf_int32_0 testSync_something;

struct testSync_Args_a0a2a2 {
};

struct testSync_Args_a0a3a2 {
  int32_t b;
  int32_t a;
};

struct testSync_Args_a0a4a2 {
};

struct testSync_Args_a0a5a2 {
  int32_t a;
  int32_t b;
};

static void testSync_foo(void);

static void testSync_foo1(void);

static void testSync_foo2(int32_t a,int32_t b);

static void* testSync_parFun_a0a2a2(void* voidArgs);

static void* testSync_parFun_a0a3a2(void* voidArgs);

static void* testSync_parFun_a0a4a2(void* voidArgs);

static void* testSync_parFun_a0a5a2(void* voidArgs);

static struct GenericTaskDeclarations_Future testSync_futureInit_a0c0c(void);

static struct GenericTaskDeclarations_Future testSync_futureInit_a0d0c(int32_t b,int32_t a);

static struct GenericTaskDeclarations_VoidFuture testSync_futureInit_a0e0c(void);

static struct GenericTaskDeclarations_VoidFuture testSync_futureInit_a0f0c(int32_t a,int32_t b);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  testSync_initAllGlobalMutexes_0();
  struct GenericSharedDeclarations_SharedOf_int32_0 myShared;
  pthread_mutex_init(&myShared.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSyncDeclarations_startSyncFor1Mutex(&myShared.mutex);
  {
    myShared.value = 5;
    if ( 1 ) 
    {
      GenericSyncDeclarations_stopSyncFor1Mutex(&myShared.mutex);
      return 1;
    }

  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&myShared.mutex);
  return 0;
}


static void testSync_foo(void) 
{
  int32_t a = 0;
  int32_t b = 1;
  ((uint8_t volatile  const *)(GenericTaskDeclarations_saveFutureAndGetResult(testSync_futureInit_a0c0c())));
  ((int32_t*)(GenericTaskDeclarations_saveFutureAndGetResult(testSync_futureInit_a0d0c(b, a))));
  GenericTaskDeclarations_saveAndJoinVoidFuture(testSync_futureInit_a0e0c());
  GenericTaskDeclarations_saveAndJoinVoidFuture(testSync_futureInit_a0f0c(a, b));
  
  struct GenericSharedDeclarations_SharedOf_int16_0 i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  goto HERE;

  if ( 1 ) 
  {
    pthread_mutex_destroy(&i.mutex);
    return ;
  }

  while (1)
  {
    struct GenericSharedDeclarations_SharedOf_int32_0 j;
    pthread_mutex_init(&j.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    if ( 0 ) 
    {
      struct GenericSharedDeclarations_SharedOf_int32_0 j2;
      pthread_mutex_init(&j2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&j.mutex);
      pthread_mutex_destroy(&j2.mutex);
      break;
      pthread_mutex_destroy(&j.mutex);
      pthread_mutex_destroy(&j2.mutex);
      continue;
    }

    int16_t k = 3;
    pthread_mutex_destroy(&j.mutex);
  }

  switch (0)
  {
    case 1: {
      struct GenericSharedDeclarations_SharedOf_int32_0 j;
      pthread_mutex_init(&j.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&j.mutex);
      break;
    }
    case 0: {
      struct GenericSharedDeclarations_SharedOf_int32_0 j;
      pthread_mutex_init(&j.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&j.mutex);
    }
  }

  
  HERE:

  pthread_mutex_destroy(&i.mutex);
}


static void testSync_foo1(void) 
{
  
}


static void testSync_foo2(int32_t a, int32_t b) 
{
  
}


static void* testSync_parFun_a0a2a2(void* voidArgs) 
{
  uint8_t* result = malloc(sizeof(uint8_t volatile  const ));
  *result = 3;
  return result;
}


static void* testSync_parFun_a0a3a2(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  struct testSync_Args_a0a3a2* args = ((struct testSync_Args_a0a3a2*)(voidArgs));
  *result = (args)->a + (args)->b;
  free(voidArgs);
  return result;
}


static void* testSync_parFun_a0a4a2(void* voidArgs) 
{
  testSync_foo1();
  return 0;
}


static void* testSync_parFun_a0a5a2(void* voidArgs) 
{
  struct testSync_Args_a0a5a2* args = ((struct testSync_Args_a0a5a2*)(voidArgs));
  testSync_foo2((args)->a, (args)->b);
  free(voidArgs);
  return 0;
}


void testSync_initGlobalMutexesFor1Module_0(void) 
{
  pthread_mutex_init(&testSync_something.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}


void testSync_initAllGlobalMutexes_0(void) 
{
  testSync_initGlobalMutexesFor1Module_0();
}


static struct GenericTaskDeclarations_Future testSync_futureInit_a0c0c(void) 
{
  pthread_t pth;
  pthread_create(&pth,0,&testSync_parFun_a0a2a2,0);
  return (struct GenericTaskDeclarations_Future){ .pth =pth};
}


static struct GenericTaskDeclarations_Future testSync_futureInit_a0d0c(int32_t b, int32_t a) 
{
  struct testSync_Args_a0a3a2* args_a0d0c = malloc(sizeof(struct testSync_Args_a0a3a2));
  args_a0d0c->b = b;
  args_a0d0c->a = a;
  pthread_t pth;
  pthread_create(&pth,0,&testSync_parFun_a0a3a2,args_a0d0c);
  return (struct GenericTaskDeclarations_Future){ .pth =pth};
}


static struct GenericTaskDeclarations_VoidFuture testSync_futureInit_a0e0c(void) 
{
  pthread_t pth;
  pthread_create(&pth,0,&testSync_parFun_a0a4a2,0);
  return (struct GenericTaskDeclarations_VoidFuture){ .pth =pth};
}


static struct GenericTaskDeclarations_VoidFuture testSync_futureInit_a0f0c(int32_t a, int32_t b) 
{
  struct testSync_Args_a0a5a2* args_a0f0c = malloc(sizeof(struct testSync_Args_a0a5a2));
  args_a0f0c->a = a;
  args_a0f0c->b = b;
  pthread_t pth;
  pthread_create(&pth,0,&testSync_parFun_a0a5a2,args_a0f0c);
  return (struct GenericTaskDeclarations_VoidFuture){ .pth =pth};
}


