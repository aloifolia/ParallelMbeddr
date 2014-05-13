#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include <stdlib.h>

static struct GenericSharedDeclarations_SharedInt32_0* syncStuff_global;

struct syncStuff_Args_a0i0b {
};

struct syncStuff_Args_a0j0b {
  struct GenericSharedDeclarations_SharedInt32_0* local2;
};

struct syncStuff_Args_a0i0b_0 {
};

struct syncStuff_Args_a0j0b_0 {
  struct GenericSharedDeclarations_SharedInt32_0* local2;
};

static void syncStuff_changeGlobalDirectly(void);

static void syncStuff_changeGlobalViaParameter(struct GenericSharedDeclarations_SharedInt32_0* pointerToSharedMemory);

static inline void syncStuff_init_local1_0(struct GenericSharedDeclarations_SharedInt32_0* local1);

static inline void syncStuff_destroy_local1_0(struct GenericSharedDeclarations_SharedInt32_0* local1);

static inline void syncStuff_init_TEST_0(struct GenericSharedDeclarations_SharedInt32_0* TEST);

static inline void syncStuff_destroy_TEST_0(struct GenericSharedDeclarations_SharedInt32_0* TEST);

static void syncStuff_startSync_0(pthread_mutex_t* mutex_0);

static void syncStuff_stopSync_0(pthread_mutex_t* mutex_1);

static void* syncStuff_parFun_a0i0b(void* voidArgs);

static void* syncStuff_parFun_a0j0b(void* voidArgs);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a0i0b(void);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a0j0b(struct GenericSharedDeclarations_SharedInt32_0* local2);

int32_t main(int32_t argc, char* argv[]) 
{
  syncStuff_initGlobalMutexes_0();
  struct GenericSharedDeclarations_SharedInt32_0 local1;
  syncStuff_init_local1_0(&local1);
  struct GenericSharedDeclarations_SharedInt32_0* local2 = &local1;
  syncStuff_global = local2;
  struct GenericSharedDeclarations_SharedInt32_0 TEST;
  syncStuff_init_TEST_0(&TEST);
  
  struct GenericTaskDeclarations_VoidFuture f1 = GenericTaskDeclarations_runTaskAndGetVoidFuture(syncStuff_taskInit_a0i0b());
  struct GenericTaskDeclarations_VoidFuture f2 = GenericTaskDeclarations_runTaskAndGetVoidFuture(syncStuff_taskInit_a0j0b(local2));
  
  
  GenericTaskDeclarations_joinVoidFuture(&f1);
  GenericTaskDeclarations_joinVoidFuture(&f2);
  
  
  syncStuff_destroyGlobalMutexes_0();
  syncStuff_destroy_local1_0(&local1);
  syncStuff_destroy_TEST_0(&TEST);
  return 0;
}


static void syncStuff_changeGlobalDirectly(void) 
{
  pthread_mutex_t* mutex_2 = &(*syncStuff_global.mutex);
  syncStuff_startSync_0(&mutex_2);
  {
    *syncStuff_global.value = 4;
  }

  syncStuff_stopSync_0(&mutex_2);
}


static void syncStuff_changeGlobalViaParameter(struct GenericSharedDeclarations_SharedInt32_0* pointerToSharedMemory) 
{
}


void syncStuff_initGlobalMutexes_0(void) 
{
}


void syncStuff_destroyGlobalMutexes_0(void) 
{
}


static  void syncStuff_init_local1_0(struct GenericSharedDeclarations_SharedInt32_0* local1) 
{
  GenericSharedDeclarations_initMutex_0(&local1->mutexAttribute, &local1->mutex);
}


static  void syncStuff_destroy_local1_0(struct GenericSharedDeclarations_SharedInt32_0* local1) 
{
  GenericSharedDeclarations_destroyMutex_0(&local1->mutex);
}


static  void syncStuff_init_TEST_0(struct GenericSharedDeclarations_SharedInt32_0* TEST) 
{
  GenericSharedDeclarations_initMutex_0(&TEST->mutexAttribute, &TEST->mutex);
}


static  void syncStuff_destroy_TEST_0(struct GenericSharedDeclarations_SharedInt32_0* TEST) 
{
  GenericSharedDeclarations_destroyMutex_0(&TEST->mutex);
}


static void syncStuff_startSync_0(pthread_mutex_t* mutex_0) 
{
  while (1)
  {
    if ( mutex_try_lock(mutex_0) != 0 ) 
    {
      continue;
    }

    break;
  }

}


static void syncStuff_stopSync_0(pthread_mutex_t* mutex_1) 
{
  mutex_unlock(mutex_1);
}


static void* syncStuff_parFun_a0i0b(void* voidArgs) 
{
  struct syncStuff_Args_a0i0b_0* args = ((struct syncStuff_Args_a0i0b_0*)(voidArgs));
  syncStuff_changeGlobalDirectly();
  return 0;
}


static void* syncStuff_parFun_a0j0b(void* voidArgs) 
{
  struct syncStuff_Args_a0j0b_0* args = ((struct syncStuff_Args_a0j0b_0*)(voidArgs));
  syncStuff_changeGlobalViaParameter((*args).local2);
  return 0;
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a0i0b(void) 
{
  
  struct syncStuff_Args_a0i0b_0* args_a0i0b = malloc(sizeof(struct syncStuff_Args_a0i0b_0));
  struct GenericTaskDeclarations_Task task1 = {args_a0i0b,&syncStuff_parFun_a0i0b};
  return task1;
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a0j0b(struct GenericSharedDeclarations_SharedInt32_0* local2) 
{
  
  struct syncStuff_Args_a0j0b_0* args_a0j0b = malloc(sizeof(struct syncStuff_Args_a0j0b_0));
  args_a0j0b->local2 = local2;
  struct GenericTaskDeclarations_Task task1 = {args_a0j0b,&syncStuff_parFun_a0j0b};
  return task1;
}


