#include "simplesync.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

static GenericSharedDeclarations_SharedOf_int32_0_t simplesync_value;

static int32_t simplesync_counter;

typedef struct simplesync_Args_a0g0c simplesync_Args_a0g0c_t;
struct simplesync_Args_a0g0c {
  GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer;
};

typedef struct simplesync_Args_a0h0c simplesync_Args_a0h0c_t;
struct simplesync_Args_a0h0c {
  GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer;
};

static void simplesync_foo(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer);

static void* simplesync_parFun_a0g0c(void* voidArgs);

static void* simplesync_parFun_a0h0c(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a6a2(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer);

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a7a2(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  simplesync_initAllGlobalMutexes_0();
  GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer = &simplesync_value;
  
  simplesync_counter++;
  GenericSyncDeclarations_startSyncFor1Mutex(&simplesync_value.mutex);
  {
    simplesync_value.value = 5;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&simplesync_value.mutex);
  simplesync_counter--;
  
  simplesync_futureInit_a6a2(valuePointer);
  simplesync_futureInit_a7a2(valuePointer);
  
  return 0;
}

static void simplesync_foo(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer) 
{
  
}

static void* simplesync_parFun_a0g0c(void* voidArgs) 
{
  simplesync_Args_a0g0c_t* args = ((simplesync_Args_a0g0c_t*)(voidArgs));
  simplesync_foo((args)->valuePointer);
  free(voidArgs);
  return 0;
}

static void* simplesync_parFun_a0h0c(void* voidArgs) 
{
  simplesync_Args_a0h0c_t* args = ((simplesync_Args_a0h0c_t*)(voidArgs));
  simplesync_foo((args)->valuePointer);
  free(voidArgs);
  return 0;
}

void simplesync_initGlobalMutexesFor1Module_0(void) 
{
  pthread_mutex_init(&simplesync_value.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void simplesync_initAllGlobalMutexes_0(void) 
{
  simplesync_initGlobalMutexesFor1Module_0();
}

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a6a2(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer) 
{
  simplesync_Args_a0g0c_t* args_a6a2 = malloc(sizeof(simplesync_Args_a0g0c_t));
  args_a6a2->valuePointer = valuePointer;
  pthread_t pth;
  pthread_create(&pth,0,&simplesync_parFun_a0g0c,args_a6a2);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a7a2(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer) 
{
  simplesync_Args_a0h0c_t* args_a7a2 = malloc(sizeof(simplesync_Args_a0h0c_t));
  args_a7a2->valuePointer = valuePointer;
  pthread_t pth;
  pthread_create(&pth,0,&simplesync_parFun_a0h0c,args_a7a2);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

