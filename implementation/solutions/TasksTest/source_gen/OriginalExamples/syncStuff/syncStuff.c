#include "syncStuff.h"


#include <stdlib.h>
#include "GenericTaskDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

static int32_t* syncStuff_global;

struct syncStuff_Args_a0f0b {
};

struct syncStuff_Args_a0g0b {
  int32_t* local2;
};

struct syncStuff_Args_a0f0b_0 {
};

struct syncStuff_Args_a0g0b_0 {
  int32_t* local2;
};

static void syncStuff_changeGlobalDirectly(void);

static void syncStuff_changeGlobalViaParameter(int32_t* pointerToSharedMemory);

static void* syncStuff_parFun_a0f0b(void* voidArgs);

static void* syncStuff_parFun_a0g0b(void* voidArgs);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a0f0b(void);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a0g0b(int32_t* local2);

int32_t main(int32_t argc, char* argv[]) 
{
  syncStuff_initGlobalMutexes_0();
  int32_t local1 = 0;
  int32_t* local2 = &local1;
  syncStuff_global = local2;
  
  struct GenericTaskDeclarations_Future f1 = GenericTaskDeclarations_runTaskAndGetVoidFuture(syncStuff_taskInit_a0f0b());
  struct GenericTaskDeclarations_Future f2 = GenericTaskDeclarations_runTaskAndGetVoidFuture(syncStuff_taskInit_a0g0b(local2));
  
  
  GenericTaskDeclarations_joinFuture(&f1);
  GenericTaskDeclarations_joinFuture(&f2);
  
  
  syncStuff_destroyGlobalMutexes_0();
  return 0;
}


static void syncStuff_changeGlobalDirectly(void) 
{
}


static void syncStuff_changeGlobalViaParameter(int32_t* pointerToSharedMemory) 
{
}


void syncStuff_initGlobalMutexes_0(void) 
{
}


void syncStuff_destroyGlobalMutexes_0(void) 
{
}


static void* syncStuff_parFun_a0f0b(void* voidArgs) 
{
  struct syncStuff_Args_a0f0b_0* args = ((struct syncStuff_Args_a0f0b_0*)(voidArgs));
  syncStuff_changeGlobalDirectly();
  return 0;
}


static void* syncStuff_parFun_a0g0b(void* voidArgs) 
{
  struct syncStuff_Args_a0g0b_0* args = ((struct syncStuff_Args_a0g0b_0*)(voidArgs));
  syncStuff_changeGlobalViaParameter((*args).local2);
  return 0;
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a0f0b(void) 
{
  
  struct syncStuff_Args_a0f0b_0* args_a0f0b = malloc(sizeof(struct syncStuff_Args_a0f0b_0));
  struct GenericTaskDeclarations_Task task1 = {args_a0f0b,&syncStuff_parFun_a0f0b};
  return task1;
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a0g0b(int32_t* local2) 
{
  
  struct syncStuff_Args_a0g0b_0* args_a0g0b = malloc(sizeof(struct syncStuff_Args_a0g0b_0));
  args_a0g0b->local2 = local2;
  struct GenericTaskDeclarations_Task task1 = {args_a0g0b,&syncStuff_parFun_a0g0b};
  return task1;
}


