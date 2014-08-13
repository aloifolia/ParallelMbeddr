#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct syncStuff_Args_a6a1 syncStuff_Args_a6a1_t;
struct syncStuff_Args_a6a1 {
  GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer;
};

typedef struct syncStuff_Args_a7a2 syncStuff_Args_a7a2_t;
struct syncStuff_Args_a7a2 {
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer;
};

typedef struct syncStuff_Args_a7a3 syncStuff_Args_a7a3_t;
struct syncStuff_Args_a7a3 {
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer;
};

static void syncStuff_test2(void);

static void syncStuff_teste2(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer);

static void syncStuff_teste2_0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer);

static void* syncStuff_parFun_a6a1(void* voidArgs);

static void* syncStuff_parFun_a7a2(void* voidArgs);

static void* syncStuff_parFun_a7a3(void* voidArgs);

static inline GenericTaskDeclarations_Task_t syncStuff_taskInit_a6a1(GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer);

static inline GenericTaskDeclarations_Task_t syncStuff_taskInit_a7a2(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer);

static inline GenericTaskDeclarations_Task_t syncStuff_taskInit_a7a3(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  syncStuff_test2();
  return 0;
}

static void syncStuff_test2(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t var1;
  pthread_mutex_init(&var1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t var2;
  pthread_mutex_init(&var2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer = &var1;
  syncStuff_teste2(&var1);
  /* 
   * since var2 is never shared, an optimized teste2 variant will be called
   */

  syncStuff_teste2_0(&var2);
  syncStuff_taskInit_a6a1(var1Pointer);
  pthread_mutex_destroy(&var1.mutex);
  pthread_mutex_destroy(&var2.mutex);
}

static void syncStuff_teste2(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* yPointer = &y;
  GenericSharedDeclarations_SharedOf_int32_0_t z;
  pthread_mutex_init(&z.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer = &z;
  /* 
   * z is shared (see below), x is shared for the calls teste2(&var1) and teste2(zPointer), y is not shared
   */

  GenericSyncDeclarations_startSyncFor2Mutexes(&(xPointer)->mutex, &(zPointer)->mutex);
  {
    xPointer->value;
    yPointer->value;
    zPointer->value;
  }
  GenericSyncDeclarations_stopSyncFor2Mutexes(&(xPointer)->mutex, &(zPointer)->mutex);
  /* 
   * z, and with it x in the follwing calls, is shared with another task => z must be synced, but x only for the second following call
   */

  syncStuff_taskInit_a7a2(zPointer);
  syncStuff_teste2_0(yPointer);
  syncStuff_teste2(zPointer);
  pthread_mutex_destroy(&y.mutex);
  pthread_mutex_destroy(&z.mutex);
}

static void syncStuff_teste2_0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* yPointer = &y;
  GenericSharedDeclarations_SharedOf_int32_0_t z;
  pthread_mutex_init(&z.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer = &z;
  /* 
   * z is shared (see below), x is shared for the calls teste2(&var1) and teste2(zPointer), y is not shared
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(zPointer)->mutex);
  {
    xPointer->value;
    yPointer->value;
    zPointer->value;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(zPointer)->mutex);
  /* 
   * z, and with it x in the follwing calls, is shared with another task => z must be synced, but x only for the second following call
   */

  syncStuff_taskInit_a7a3(zPointer);
  syncStuff_teste2_0(yPointer);
  syncStuff_teste2(zPointer);
  pthread_mutex_destroy(&y.mutex);
  pthread_mutex_destroy(&z.mutex);
}

static void* syncStuff_parFun_a6a1(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  syncStuff_Args_a6a1_t* args = ((syncStuff_Args_a6a1_t*)(voidArgs));
  *result = (args)->var1Pointer;
  free(voidArgs);
  return result;
}

static void* syncStuff_parFun_a7a2(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  syncStuff_Args_a7a2_t* args = ((syncStuff_Args_a7a2_t*)(voidArgs));
  *result = (args)->zPointer;
  free(voidArgs);
  return result;
}

static void* syncStuff_parFun_a7a3(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  syncStuff_Args_a7a3_t* args = ((syncStuff_Args_a7a3_t*)(voidArgs));
  *result = (args)->zPointer;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t syncStuff_taskInit_a6a1(GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer) 
{
  syncStuff_Args_a6a1_t* args_a6a1 = malloc(sizeof(syncStuff_Args_a6a1_t));
  args_a6a1->var1Pointer = var1Pointer;
  return (GenericTaskDeclarations_Task_t){args_a6a1,&syncStuff_parFun_a6a1,sizeof(syncStuff_Args_a6a1_t)};
}

static inline GenericTaskDeclarations_Task_t syncStuff_taskInit_a7a2(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer) 
{
  syncStuff_Args_a7a2_t* args_a7a2 = malloc(sizeof(syncStuff_Args_a7a2_t));
  args_a7a2->zPointer = zPointer;
  return (GenericTaskDeclarations_Task_t){args_a7a2,&syncStuff_parFun_a7a2,sizeof(syncStuff_Args_a7a2_t)};
}

static inline GenericTaskDeclarations_Task_t syncStuff_taskInit_a7a3(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer) 
{
  syncStuff_Args_a7a3_t* args_a7a3 = malloc(sizeof(syncStuff_Args_a7a3_t));
  args_a7a3->zPointer = zPointer;
  return (GenericTaskDeclarations_Task_t){args_a7a3,&syncStuff_parFun_a7a3,sizeof(syncStuff_Args_a7a3_t)};
}

