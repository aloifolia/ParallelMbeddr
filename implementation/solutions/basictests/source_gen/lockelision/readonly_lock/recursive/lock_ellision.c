#include "lock_ellision.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct lock_ellision_Args_a4a1 lock_ellision_Args_a4a1_t;
struct lock_ellision_Args_a4a1 {
  GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer;
};

typedef struct lock_ellision_Args_a5a1 lock_ellision_Args_a5a1_t;
struct lock_ellision_Args_a5a1 {
  GenericSharedDeclarations_SharedOf_int32_0_t* var2Pointer;
};

typedef struct lock_ellision_Args_a9a2 lock_ellision_Args_a9a2_t;
struct lock_ellision_Args_a9a2 {
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer;
};

typedef struct lock_ellision_Args_a9a3 lock_ellision_Args_a9a3_t;
struct lock_ellision_Args_a9a3 {
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer;
};

typedef struct lock_ellision_Args_a9a4 lock_ellision_Args_a9a4_t;
struct lock_ellision_Args_a9a4 {
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer;
};

static void lock_ellision_caller(void);

static void lock_ellision_callee(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer);

static void lock_ellision_callee_0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer);

static void lock_ellision_callee_1(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer);

static void* lock_ellision_parFun_a4a1(void* voidArgs);

static void* lock_ellision_parFun_a5a1(void* voidArgs);

static void* lock_ellision_parFun_a9a2(void* voidArgs);

static void* lock_ellision_parFun_a9a3(void* voidArgs);

static void* lock_ellision_parFun_a9a4(void* voidArgs);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a4a1(GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a5a1(GenericSharedDeclarations_SharedOf_int32_0_t* var2Pointer);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a9a2(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a9a3(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a9a4(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  lock_ellision_caller();
  return 0;
}

static void lock_ellision_caller(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t var1;
  pthread_mutex_init(&var1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer = &var1;
  GenericSharedDeclarations_SharedOf_int32_0_t var2;
  pthread_mutex_init(&var2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var2Pointer = &var2;
  lock_ellision_taskInit_a4a1(var1Pointer);
  lock_ellision_taskInit_a5a1(var2Pointer);
  
  GenericSyncDeclarations_startSyncFor1Mutex(&(var1).mutex);
  {
    var1.value = 5;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(var1).mutex);
  
  lock_ellision_callee(&var1);
  /* 
   * Since var2 is never shared, an optimized callee variant will be called.
   */

  lock_ellision_callee_1(&var2);
  pthread_mutex_destroy(&var1.mutex);
  pthread_mutex_destroy(&var2.mutex);
}

static void lock_ellision_callee(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* yPointer = &y;
  GenericSharedDeclarations_SharedOf_int32_0_t z;
  pthread_mutex_init(&z.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer = &z;
  /* 
   * z is written (see below), x is written for the calls callee(&var1) and callee(zPointer), y is readonly
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

  GenericSyncDeclarations_startSyncFor1Mutex(&(zPointer)->mutex);
  {
    zPointer->value = 1;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(zPointer)->mutex);
  /* 
   * The removal of the following line would cause a deletion of zPointer's locks, hence both following calls would be mapped to calls of the variant of callee which does not synchronize anything.
   */

  lock_ellision_taskInit_a9a2(zPointer);
  lock_ellision_callee_0(yPointer);
  lock_ellision_callee(zPointer);
  pthread_mutex_destroy(&y.mutex);
  pthread_mutex_destroy(&z.mutex);
}

static void lock_ellision_callee_0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* yPointer = &y;
  GenericSharedDeclarations_SharedOf_int32_0_t z;
  pthread_mutex_init(&z.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer = &z;
  /* 
   * z is written (see below), x is written for the calls callee(&var1) and callee(zPointer), y is readonly
   */

  {
    xPointer->value;
    yPointer->value;
    GenericSyncDeclarations_startSyncFor1Mutex(&(zPointer)->mutex);
    {
      zPointer->value;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(zPointer)->mutex);
  }
  /* 
   * z, and with it x in the follwing calls, is shared with another task => z must be synced, but x only for the second following call
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(zPointer)->mutex);
  {
    zPointer->value = 1;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(zPointer)->mutex);
  /* 
   * The removal of the following line would cause a deletion of zPointer's locks, hence both following calls would be mapped to calls of the variant of callee which does not synchronize anything.
   */

  lock_ellision_taskInit_a9a3(zPointer);
  lock_ellision_callee_0(yPointer);
  lock_ellision_callee(zPointer);
  pthread_mutex_destroy(&y.mutex);
  pthread_mutex_destroy(&z.mutex);
}

static void lock_ellision_callee_1(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* yPointer = &y;
  GenericSharedDeclarations_SharedOf_int32_0_t z;
  pthread_mutex_init(&z.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* zPointer = &z;
  /* 
   * z is written (see below), x is written for the calls callee(&var1) and callee(zPointer), y is readonly
   */

  {
    xPointer->value;
    yPointer->value;
    GenericSyncDeclarations_startSyncFor1Mutex(&(zPointer)->mutex);
    {
      zPointer->value;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(zPointer)->mutex);
  }
  /* 
   * z, and with it x in the follwing calls, is shared with another task => z must be synced, but x only for the second following call
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(zPointer)->mutex);
  {
    zPointer->value = 1;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(zPointer)->mutex);
  /* 
   * The removal of the following line would cause a deletion of zPointer's locks, hence both following calls would be mapped to calls of the variant of callee which does not synchronize anything.
   */

  lock_ellision_taskInit_a9a4(zPointer);
  lock_ellision_callee_0(yPointer);
  lock_ellision_callee(zPointer);
  pthread_mutex_destroy(&y.mutex);
  pthread_mutex_destroy(&z.mutex);
}

static void* lock_ellision_parFun_a4a1(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a4a1_t* args = ((lock_ellision_Args_a4a1_t*)(voidArgs));
  *result = (args)->var1Pointer;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a5a1(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a5a1_t* args = ((lock_ellision_Args_a5a1_t*)(voidArgs));
  *result = (args)->var2Pointer;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a9a2(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a9a2_t* args = ((lock_ellision_Args_a9a2_t*)(voidArgs));
  *result = (args)->zPointer;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a9a3(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a9a3_t* args = ((lock_ellision_Args_a9a3_t*)(voidArgs));
  *result = (args)->zPointer;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a9a4(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a9a4_t* args = ((lock_ellision_Args_a9a4_t*)(voidArgs));
  *result = (args)->zPointer;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a4a1(GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer) 
{
  lock_ellision_Args_a4a1_t* args_a4a1 = malloc(sizeof(lock_ellision_Args_a4a1_t));
  args_a4a1->var1Pointer = var1Pointer;
  return (GenericTaskDeclarations_Task_t){args_a4a1,&lock_ellision_parFun_a4a1,sizeof(lock_ellision_Args_a4a1_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a5a1(GenericSharedDeclarations_SharedOf_int32_0_t* var2Pointer) 
{
  lock_ellision_Args_a5a1_t* args_a5a1 = malloc(sizeof(lock_ellision_Args_a5a1_t));
  args_a5a1->var2Pointer = var2Pointer;
  return (GenericTaskDeclarations_Task_t){args_a5a1,&lock_ellision_parFun_a5a1,sizeof(lock_ellision_Args_a5a1_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a9a2(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer) 
{
  lock_ellision_Args_a9a2_t* args_a9a2 = malloc(sizeof(lock_ellision_Args_a9a2_t));
  args_a9a2->zPointer = zPointer;
  return (GenericTaskDeclarations_Task_t){args_a9a2,&lock_ellision_parFun_a9a2,sizeof(lock_ellision_Args_a9a2_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a9a3(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer) 
{
  lock_ellision_Args_a9a3_t* args_a9a3 = malloc(sizeof(lock_ellision_Args_a9a3_t));
  args_a9a3->zPointer = zPointer;
  return (GenericTaskDeclarations_Task_t){args_a9a3,&lock_ellision_parFun_a9a3,sizeof(lock_ellision_Args_a9a3_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a9a4(GenericSharedDeclarations_SharedOf_int32_0_t* zPointer) 
{
  lock_ellision_Args_a9a4_t* args_a9a4 = malloc(sizeof(lock_ellision_Args_a9a4_t));
  args_a9a4->zPointer = zPointer;
  return (GenericTaskDeclarations_Task_t){args_a9a4,&lock_ellision_parFun_a9a4,sizeof(lock_ellision_Args_a9a4_t)};
}

