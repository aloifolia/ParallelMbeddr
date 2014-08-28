#include "lock_ellision.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct lock_ellision_Args_a0a2 lock_ellision_Args_a0a2_t;
struct lock_ellision_Args_a0a2 {
  GenericSharedDeclarations_SharedOf_int32_0_t* varA1;
};

typedef struct lock_ellision_Args_a1a2 lock_ellision_Args_a1a2_t;
struct lock_ellision_Args_a1a2 {
  GenericSharedDeclarations_SharedOf_int32_0_t* varA3;
};

typedef struct lock_ellision_Args_a0a3 lock_ellision_Args_a0a3_t;
struct lock_ellision_Args_a0a3 {
  GenericSharedDeclarations_SharedOf_int32_0_t* varB2;
};

typedef struct lock_ellision_Args_a0a4 lock_ellision_Args_a0a4_t;
struct lock_ellision_Args_a0a4 {
  GenericSharedDeclarations_SharedOf_int32_0_t* varD4;
};

static void lock_ellision_init(void);

static void lock_ellision_sharer1(GenericSharedDeclarations_SharedOf_int32_0_t* varA1, GenericSharedDeclarations_SharedOf_int32_0_t* varA2, GenericSharedDeclarations_SharedOf_int32_0_t* varA3, GenericSharedDeclarations_SharedOf_int32_0_t* varA4);

static void lock_ellision_sharer2(GenericSharedDeclarations_SharedOf_int32_0_t* varB1, GenericSharedDeclarations_SharedOf_int32_0_t* varB2, GenericSharedDeclarations_SharedOf_int32_0_t* varB3, GenericSharedDeclarations_SharedOf_int32_0_t* varB4);

static void lock_ellision_sharer3(GenericSharedDeclarations_SharedOf_int32_0_t* varD1, GenericSharedDeclarations_SharedOf_int32_0_t* varD2, GenericSharedDeclarations_SharedOf_int32_0_t* varD3, GenericSharedDeclarations_SharedOf_int32_0_t* varD4);

static void lock_ellision_synchronizer(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4);

static void lock_ellision_synchronizer_0(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4);

static void* lock_ellision_parFun_a0a2(void* voidArgs);

static void* lock_ellision_parFun_a1a2(void* voidArgs);

static void* lock_ellision_parFun_a0a3(void* voidArgs);

static void* lock_ellision_parFun_a0a4(void* voidArgs);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a0a2(GenericSharedDeclarations_SharedOf_int32_0_t* varA1);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a1a2(GenericSharedDeclarations_SharedOf_int32_0_t* varA3);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a0a3(GenericSharedDeclarations_SharedOf_int32_0_t* varB2);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a0a4(GenericSharedDeclarations_SharedOf_int32_0_t* varD4);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  lock_ellision_init();
  return 0;
}

static void lock_ellision_init(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t var1;
  pthread_mutex_init(&var1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t var2;
  pthread_mutex_init(&var2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t var3;
  pthread_mutex_init(&var3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t var4;
  pthread_mutex_init(&var4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  lock_ellision_sharer1(&var1, &var2, &var3, &var4);
  lock_ellision_sharer2(&var1, &var2, &var3, &var4);
  
  GenericSharedDeclarations_SharedOf_int32_0_t var31;
  pthread_mutex_init(&var31.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t var32;
  pthread_mutex_init(&var32.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t var33;
  pthread_mutex_init(&var33.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t var34;
  pthread_mutex_init(&var34.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  lock_ellision_sharer3(&var31, &var32, &var33, &var34);
  /* 
   * The following statement will eliminate the possibility to copy synchronizer for sharer2
   * Reason: var4 will get shared in sharer3, and thus also the value that varB4 in sharer2 points to.
   */

  pthread_mutex_destroy(&var1.mutex);
  pthread_mutex_destroy(&var2.mutex);
  pthread_mutex_destroy(&var3.mutex);
  pthread_mutex_destroy(&var4.mutex);
  pthread_mutex_destroy(&var31.mutex);
  pthread_mutex_destroy(&var32.mutex);
  pthread_mutex_destroy(&var33.mutex);
  pthread_mutex_destroy(&var34.mutex);
}

static void lock_ellision_sharer1(GenericSharedDeclarations_SharedOf_int32_0_t* varA1, GenericSharedDeclarations_SharedOf_int32_0_t* varA2, GenericSharedDeclarations_SharedOf_int32_0_t* varA3, GenericSharedDeclarations_SharedOf_int32_0_t* varA4) 
{
  lock_ellision_taskInit_a0a2(varA1);
  lock_ellision_taskInit_a1a2(varA3);
  /* 
   * varA1 and varA3 are obviously shared; furthermore varA2 via varB2 in sharer2 and varA4 via varD4
   * in sharer3 => no optimization for the following call is possible.
   */

  lock_ellision_synchronizer(varA1, varA2, varA3, varA4);
}

static void lock_ellision_sharer2(GenericSharedDeclarations_SharedOf_int32_0_t* varB1, GenericSharedDeclarations_SharedOf_int32_0_t* varB2, GenericSharedDeclarations_SharedOf_int32_0_t* varB3, GenericSharedDeclarations_SharedOf_int32_0_t* varB4) 
{
  lock_ellision_taskInit_a0a3(varB2);
  /* 
   * varB2 is shared; varB1 and varB3 are shared via varA1 and varA3 in sharer1; varB4 is not shared
   * => call an optimized variant of synchronizer which does not sync varC4.
   */

  lock_ellision_synchronizer_0(varB1, varB2, varB3, varB4);
}

static void lock_ellision_sharer3(GenericSharedDeclarations_SharedOf_int32_0_t* varD1, GenericSharedDeclarations_SharedOf_int32_0_t* varD2, GenericSharedDeclarations_SharedOf_int32_0_t* varD3, GenericSharedDeclarations_SharedOf_int32_0_t* varD4) 
{
  lock_ellision_taskInit_a0a4(varD4);
  lock_ellision_sharer1(varD1, varD2, varD3, varD4);
}

static void lock_ellision_synchronizer(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC1 = varC1;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC2 = varC2;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC3 = varC3;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC4 = varC4;
    GenericSyncDeclarations_startSyncFor4Mutexes(&(myVarC1)->mutex, &(myVarC2)->mutex, &(myVarC3)->mutex, &(myVarC4)->mutex);
    {
      myVarC1->value = 1;
      myVarC2->value = 2;
      myVarC3->value = 3;
      myVarC4->value = 4;
    }
    GenericSyncDeclarations_stopSyncFor4Mutexes(&(myVarC1)->mutex, &(myVarC2)->mutex, &(myVarC3)->mutex, &(myVarC4)->mutex);
  }
}

static void lock_ellision_synchronizer_0(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC1 = varC1;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC2 = varC2;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC3 = varC3;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC4 = varC4;
    {
      GenericSyncDeclarations_startSyncFor3Mutexes(&(myVarC1)->mutex, &(myVarC2)->mutex, &(myVarC3)->mutex);
      {
        myVarC1->value = 1;
        myVarC2->value = 2;
        myVarC3->value = 3;
      }
      GenericSyncDeclarations_stopSyncFor3Mutexes(&(myVarC1)->mutex, &(myVarC2)->mutex, &(myVarC3)->mutex);
      myVarC4->value = 4;
    }
  }
}

static void* lock_ellision_parFun_a0a2(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a0a2_t* args = ((lock_ellision_Args_a0a2_t*)(voidArgs));
  *result = (args)->varA1;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a1a2(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a1a2_t* args = ((lock_ellision_Args_a1a2_t*)(voidArgs));
  *result = (args)->varA3;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a0a3(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a0a3_t* args = ((lock_ellision_Args_a0a3_t*)(voidArgs));
  *result = (args)->varB2;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a0a4(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a0a4_t* args = ((lock_ellision_Args_a0a4_t*)(voidArgs));
  *result = (args)->varD4;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a0a2(GenericSharedDeclarations_SharedOf_int32_0_t* varA1) 
{
  lock_ellision_Args_a0a2_t* args_a0a2 = malloc(sizeof(lock_ellision_Args_a0a2_t));
  args_a0a2->varA1 = varA1;
  return (GenericTaskDeclarations_Task_t){args_a0a2,&lock_ellision_parFun_a0a2,sizeof(lock_ellision_Args_a0a2_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a1a2(GenericSharedDeclarations_SharedOf_int32_0_t* varA3) 
{
  lock_ellision_Args_a1a2_t* args_a1a2 = malloc(sizeof(lock_ellision_Args_a1a2_t));
  args_a1a2->varA3 = varA3;
  return (GenericTaskDeclarations_Task_t){args_a1a2,&lock_ellision_parFun_a1a2,sizeof(lock_ellision_Args_a1a2_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a0a3(GenericSharedDeclarations_SharedOf_int32_0_t* varB2) 
{
  lock_ellision_Args_a0a3_t* args_a0a3 = malloc(sizeof(lock_ellision_Args_a0a3_t));
  args_a0a3->varB2 = varB2;
  return (GenericTaskDeclarations_Task_t){args_a0a3,&lock_ellision_parFun_a0a3,sizeof(lock_ellision_Args_a0a3_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a0a4(GenericSharedDeclarations_SharedOf_int32_0_t* varD4) 
{
  lock_ellision_Args_a0a4_t* args_a0a4 = malloc(sizeof(lock_ellision_Args_a0a4_t));
  args_a0a4->varD4 = varD4;
  return (GenericTaskDeclarations_Task_t){args_a0a4,&lock_ellision_parFun_a0a4,sizeof(lock_ellision_Args_a0a4_t)};
}

