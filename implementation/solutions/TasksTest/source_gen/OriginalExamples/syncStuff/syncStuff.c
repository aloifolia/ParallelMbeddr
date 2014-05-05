#include "syncStuff.h"


#include <stdlib.h>
#include "GenericDeclarations.h"
#include <stdlib.h>

static int32_t* syncStuff_global;

struct syncStuff_Args_a0e0b {
};

struct syncStuff_Args_a0f0b {
  int32_t* local2;
};

struct syncStuff_Args_a0e0b_0 {
};

struct syncStuff_Args_a0f0b_0 {
  int32_t* local2;
};

static void syncStuff_changeGlobalDirectly(void);

static void syncStuff_changeGlobalViaParameter(int32_t* pointerToSharedMemory);

static void* syncStuff_parFun_a0e0b(void* voidArgs);

static void* syncStuff_parFun_a0f0b(void* voidArgs);

static inline struct GenericDeclarations_Task syncStuff_taskInit_a0e0b(void);

static inline struct GenericDeclarations_Task syncStuff_taskInit_a0f0b(int32_t* local2);

int32_t main(int32_t argc, char* argv[]) 
{
  int32_t local1 = 0;
  int32_t* local2 = &local1;
  syncStuff_global = local2;
  
  struct GenericDeclarations_Future f1 = GenericDeclarations_runTaskAndGetFuture(syncStuff_taskInit_a0e0b());
  struct GenericDeclarations_Future f2 = GenericDeclarations_runTaskAndGetFuture(syncStuff_taskInit_a0f0b(local2));
  
  /* sync(local1 */
  /* sync(*local2) */
  
  GenericDeclarations_joinFuture(&f1);
  GenericDeclarations_joinFuture(&f2);
  
  /* printf("result: %d", local1 */
  
  return 0;
}


static void syncStuff_changeGlobalDirectly(void) 
{
  /* sync(*global) */
}


static void syncStuff_changeGlobalViaParameter(int32_t* pointerToSharedMemory) 
{
  /* sync(*sharedParameter) */
}


static void* syncStuff_parFun_a0e0b(void* voidArgs) 
{
  struct syncStuff_Args_a0e0b_0* args = ((struct syncStuff_Args_a0e0b_0*)(voidArgs));
  void* result = malloc(sizeof(void));
  *result = syncStuff_changeGlobalDirectly();
  return result;
}


static void* syncStuff_parFun_a0f0b(void* voidArgs) 
{
  struct syncStuff_Args_a0f0b_0* args = ((struct syncStuff_Args_a0f0b_0*)(voidArgs));
  void* result = malloc(sizeof(void));
  *result = syncStuff_changeGlobalViaParameter((*args).local2);
  return result;
}


static inline struct GenericDeclarations_Task syncStuff_taskInit_a0e0b(void) 
{
  struct syncStuff_Args_a0e0b_0* args_a0e0b = malloc(sizeof(void));
  struct GenericDeclarations_Task task1 = {args_a0e0b,&syncStuff_parFun_a0e0b};
  return task1;
}


static inline struct GenericDeclarations_Task syncStuff_taskInit_a0f0b(int32_t* local2) 
{
  struct syncStuff_Args_a0f0b_0* args_a0f0b = malloc(sizeof(void));
  args_a0f0b->local2 = local2;
  struct GenericDeclarations_Task task1 = {args_a0f0b,&syncStuff_parFun_a0f0b};
  return task1;
}


