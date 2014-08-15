#include "simplesync.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <assert.h>
#include <stdlib.h>

static GenericSharedDeclarations_SharedOf_int32_0_t simplesync_value;

static int32_t simplesync_counter = 0;

typedef struct simplesync_Args_a0i0c simplesync_Args_a0i0c_t;
struct simplesync_Args_a0i0c {
  GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer;
};

typedef struct simplesync_Args_a0j0c simplesync_Args_a0j0c_t;
struct simplesync_Args_a0j0c {
  GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer;
};

static void simplesync_foo(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer);

static void* simplesync_parFun_a0i0c(void* voidArgs);

static void* simplesync_parFun_a0j0c(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a8a2(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer);

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a9a2(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  simplesync_initAllGlobalMutexes_0();
  GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer = &simplesync_value;
  
  simplesync_counter++;
  assert(simplesync_counter == 0);
  {
    simplesync_value.value = 5;
  }
  simplesync_counter--;
  assert(simplesync_counter == 1);
  
  simplesync_futureInit_a8a2(valuePointer);
  simplesync_futureInit_a9a2(valuePointer);
  
  return 0;
}

static void simplesync_foo(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer) 
{
  
}

static void* simplesync_parFun_a0i0c(void* voidArgs) 
{
  simplesync_Args_a0i0c_t* args = ((simplesync_Args_a0i0c_t*)(voidArgs));
  simplesync_foo((args)->valuePointer);
  free(voidArgs);
  return 0;
}

static void* simplesync_parFun_a0j0c(void* voidArgs) 
{
  simplesync_Args_a0j0c_t* args = ((simplesync_Args_a0j0c_t*)(voidArgs));
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

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a8a2(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer) 
{
  simplesync_Args_a0i0c_t* args_a8a2 = malloc(sizeof(simplesync_Args_a0i0c_t));
  args_a8a2->valuePointer = valuePointer;
  pthread_t pth;
  pthread_create(&pth,0,&simplesync_parFun_a0i0c,args_a8a2);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t simplesync_futureInit_a9a2(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer) 
{
  simplesync_Args_a0j0c_t* args_a9a2 = malloc(sizeof(simplesync_Args_a0j0c_t));
  args_a9a2->valuePointer = valuePointer;
  pthread_t pth;
  pthread_create(&pth,0,&simplesync_parFun_a0j0c,args_a9a2);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

