#include "simplesync.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <assert.h>

static GenericSharedDeclarations_SharedOf_int32_0_t simplesync_counter;

static int16_t simplesync_threadsCount;

typedef struct simplesync_Args_a0c0c simplesync_Args_a0c0c_t;
struct simplesync_Args_a0c0c {
};

typedef struct simplesync_Args_a0d0c simplesync_Args_a0d0c_t;
struct simplesync_Args_a0d0c {
};

static void simplesync_foo(void);

static void* simplesync_parFun_a0c0c(void* voidArgs);

static void* simplesync_parFun_a0d0c(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a2a2(void);

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a3a2(void);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  simplesync_initAllGlobalMutexes_0();
  {
    simplesync_threadsCount++;
    assert(simplesync_threadsCount == 1);
    GenericSyncDeclarations_startSyncFor1Mutex(&simplesync_counter.mutex);
    {
      simplesync_counter.value = 0;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&simplesync_counter.mutex);
    simplesync_threadsCount--;
  }
  
  simplesync_futureInit_a2a2();
  simplesync_futureInit_a3a2();
  
  return 0;
}

static void simplesync_foo(void) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&simplesync_counter.mutex);
  {
    simplesync_counter.value = simplesync_counter.value + 2;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&simplesync_counter.mutex);
}

static void* simplesync_parFun_a0c0c(void* voidArgs) 
{
  simplesync_foo();
  return 0;
}

static void* simplesync_parFun_a0d0c(void* voidArgs) 
{
  simplesync_foo();
  return 0;
}

void simplesync_initGlobalMutexesFor1Module_0(void) 
{
  pthread_mutex_init(&simplesync_counter.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void simplesync_initAllGlobalMutexes_0(void) 
{
  simplesync_initGlobalMutexesFor1Module_0();
}

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a2a2(void) 
{
  pthread_t pth;
  pthread_create(&pth,0,&simplesync_parFun_a0c0c,0);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a3a2(void) 
{
  pthread_t pth;
  pthread_create(&pth,0,&simplesync_parFun_a0d0c,0);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

