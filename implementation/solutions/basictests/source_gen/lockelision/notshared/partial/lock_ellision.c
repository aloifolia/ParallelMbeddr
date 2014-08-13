#include "lock_ellision.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct lock_ellision_Args_a3a1 lock_ellision_Args_a3a1_t;
struct lock_ellision_Args_a3a1 {
  GenericSharedDeclarations_SharedOf_int32_0_t* aPointer;
};

static void lock_ellision_sharer(void);

static void lock_ellision_synchronizer1(GenericSharedDeclarations_SharedOf_int32_0_t* val);

static void lock_ellision_synchronizer2(GenericSharedDeclarations_SharedOf_int32_0_t* val);

static void lock_ellision_synchronizer1_0(GenericSharedDeclarations_SharedOf_int32_0_t* val);

static void* lock_ellision_parFun_a3a1(void* voidArgs);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a3a1(GenericSharedDeclarations_SharedOf_int32_0_t* aPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  lock_ellision_sharer();
  return 0;
}

static void lock_ellision_sharer(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t a;
  pthread_mutex_init(&a.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* aPointer = &a;
  GenericSharedDeclarations_SharedOf_int32_0_t b;
  pthread_mutex_init(&b.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  lock_ellision_taskInit_a3a1(aPointer);
  lock_ellision_synchronizer1(&a);
  lock_ellision_synchronizer1_0(&b);
  lock_ellision_synchronizer2(&b);
  pthread_mutex_destroy(&a.mutex);
  pthread_mutex_destroy(&b.mutex);
}

static void lock_ellision_synchronizer1(GenericSharedDeclarations_SharedOf_int32_0_t* val) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&(val)->mutex);
  {
    val->value = 5;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(val)->mutex);
}

static void lock_ellision_synchronizer2(GenericSharedDeclarations_SharedOf_int32_0_t* val) 
{
  {
    val->value = 5;
  }
}

static void lock_ellision_synchronizer1_0(GenericSharedDeclarations_SharedOf_int32_0_t* val) 
{
  {
    val->value = 5;
  }
}

static void* lock_ellision_parFun_a3a1(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a3a1_t* args = ((lock_ellision_Args_a3a1_t*)(voidArgs));
  *result = (args)->aPointer;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a3a1(GenericSharedDeclarations_SharedOf_int32_0_t* aPointer) 
{
  lock_ellision_Args_a3a1_t* args_a3a1 = malloc(sizeof(lock_ellision_Args_a3a1_t));
  args_a3a1->aPointer = aPointer;
  return (GenericTaskDeclarations_Task_t){args_a3a1,&lock_ellision_parFun_a3a1,sizeof(lock_ellision_Args_a3a1_t)};
}

