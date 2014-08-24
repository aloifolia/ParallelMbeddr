#include "lock_ellision.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct lock_ellision_Args_a9a1 lock_ellision_Args_a9a1_t;
struct lock_ellision_Args_a9a1 {
  GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer;
};

typedef struct lock_ellision_Args_a01a1 lock_ellision_Args_a01a1_t;
struct lock_ellision_Args_a01a1 {
  GenericSharedDeclarations_SharedOf_int32_0_t* var2Pointer;
};

typedef struct lock_ellision_Args_a11a1 lock_ellision_Args_a11a1_t;
struct lock_ellision_Args_a11a1 {
  GenericSharedDeclarations_SharedOf_int32_0_t* var3Pointer;
};

typedef struct lock_ellision_Args_a21a1 lock_ellision_Args_a21a1_t;
struct lock_ellision_Args_a21a1 {
  GenericSharedDeclarations_SharedOf_int32_0_t* var4Pointer;
};

typedef struct lock_ellision_Args_a3a4 lock_ellision_Args_a3a4_t;
struct lock_ellision_Args_a3a4 {
  GenericSharedDeclarations_SharedOf_int32_0_t* varD4;
};

static void lock_ellision_init(void);

static void lock_ellision_writer1(GenericSharedDeclarations_SharedOf_int32_0_t* varA1, GenericSharedDeclarations_SharedOf_int32_0_t* varA2, GenericSharedDeclarations_SharedOf_int32_0_t* varA3, GenericSharedDeclarations_SharedOf_int32_0_t* varA4);

static void lock_ellision_writer2(GenericSharedDeclarations_SharedOf_int32_0_t* varB1, GenericSharedDeclarations_SharedOf_int32_0_t* varB2, GenericSharedDeclarations_SharedOf_int32_0_t* varB3, GenericSharedDeclarations_SharedOf_int32_0_t* varB4);

static void lock_ellision_writer3(GenericSharedDeclarations_SharedOf_int32_0_t* varD1, GenericSharedDeclarations_SharedOf_int32_0_t* varD2, GenericSharedDeclarations_SharedOf_int32_0_t* varD3, GenericSharedDeclarations_SharedOf_int32_0_t* varD4);

static void lock_ellision_synchronizer(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4);

static void lock_ellision_synchronizer_0(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4);

static void lock_ellision_writer1_0(GenericSharedDeclarations_SharedOf_int32_0_t* varA1, GenericSharedDeclarations_SharedOf_int32_0_t* varA2, GenericSharedDeclarations_SharedOf_int32_0_t* varA3, GenericSharedDeclarations_SharedOf_int32_0_t* varA4);

static void lock_ellision_synchronizer_1(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4);

static void lock_ellision_synchronizer_2(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4);

static void* lock_ellision_parFun_a9a1(void* voidArgs);

static void* lock_ellision_parFun_a01a1(void* voidArgs);

static void* lock_ellision_parFun_a11a1(void* voidArgs);

static void* lock_ellision_parFun_a21a1(void* voidArgs);

static void* lock_ellision_parFun_a3a4(void* voidArgs);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a9a1(GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a01a1(GenericSharedDeclarations_SharedOf_int32_0_t* var2Pointer);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a11a1(GenericSharedDeclarations_SharedOf_int32_0_t* var3Pointer);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a21a1(GenericSharedDeclarations_SharedOf_int32_0_t* var4Pointer);

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a3a4(GenericSharedDeclarations_SharedOf_int32_0_t* varD4);

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
  GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer = &var1;
  GenericSharedDeclarations_SharedOf_int32_0_t var2;
  pthread_mutex_init(&var2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var2Pointer = &var2;
  GenericSharedDeclarations_SharedOf_int32_0_t var3;
  pthread_mutex_init(&var3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var3Pointer = &var3;
  GenericSharedDeclarations_SharedOf_int32_0_t var4;
  pthread_mutex_init(&var4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var4Pointer = &var4;
  
  lock_ellision_taskInit_a9a1(var1Pointer);
  lock_ellision_taskInit_a01a1(var2Pointer);
  lock_ellision_taskInit_a11a1(var3Pointer);
  lock_ellision_taskInit_a21a1(var4Pointer);
  
  lock_ellision_writer1(&var1, &var2, &var3, &var4);
  lock_ellision_writer2(&var1, &var2, &var3, &var4);
  
  GenericSharedDeclarations_SharedOf_int32_0_t var11;
  pthread_mutex_init(&var11.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var11Pointer = &var11;
  GenericSharedDeclarations_SharedOf_int32_0_t var12;
  pthread_mutex_init(&var12.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var12Pointer = &var12;
  GenericSharedDeclarations_SharedOf_int32_0_t var13;
  pthread_mutex_init(&var13.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var13Pointer = &var13;
  GenericSharedDeclarations_SharedOf_int32_0_t var14;
  pthread_mutex_init(&var14.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* var14Pointer = &var14;
  
  lock_ellision_writer3(&var11, &var12, &var13, &var14);
  /* 
   * The following statement will change the performed optimizations...
   */

  pthread_mutex_destroy(&var1.mutex);
  pthread_mutex_destroy(&var2.mutex);
  pthread_mutex_destroy(&var3.mutex);
  pthread_mutex_destroy(&var4.mutex);
  pthread_mutex_destroy(&var11.mutex);
  pthread_mutex_destroy(&var12.mutex);
  pthread_mutex_destroy(&var13.mutex);
  pthread_mutex_destroy(&var14.mutex);
}

static void lock_ellision_writer1(GenericSharedDeclarations_SharedOf_int32_0_t* varA1, GenericSharedDeclarations_SharedOf_int32_0_t* varA2, GenericSharedDeclarations_SharedOf_int32_0_t* varA3, GenericSharedDeclarations_SharedOf_int32_0_t* varA4) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarA1 = varA1;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarA3 = varA3;
    GenericSyncDeclarations_startSyncFor2Mutexes(&(myVarA1)->mutex, &(myVarA3)->mutex);
    {
      myVarA1->value = 1;
      myVarA3->value = 3;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&(myVarA1)->mutex, &(myVarA3)->mutex);
  }
  /* 
   * varA1 and varA3 are obviously written, furthermore varA2 via varB2 in writer2(); varA4 is not written
   * => see conclusion in writer2()
   */

  lock_ellision_synchronizer_2(varA1, varA2, varA3, varA4);
}

static void lock_ellision_writer2(GenericSharedDeclarations_SharedOf_int32_0_t* varB1, GenericSharedDeclarations_SharedOf_int32_0_t* varB2, GenericSharedDeclarations_SharedOf_int32_0_t* varB3, GenericSharedDeclarations_SharedOf_int32_0_t* varB4) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarB2 = varB2;
    GenericSyncDeclarations_startSyncFor1Mutex(&(myVarB2)->mutex);
    {
      myVarB2->value = 1;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(myVarB2)->mutex);
  }
  /* 
   * varB2 is shared; varB1 and varB3 are shared via varA1 and varA3 in writer1(); varB4 is not written.
   * => remove the lock for varC4 inside synchronizer() because no remaining call of synchronizer writes the shared resource of varC4.
   */

  lock_ellision_synchronizer_0(varB1, varB2, varB3, varB4);
}

static void lock_ellision_writer3(GenericSharedDeclarations_SharedOf_int32_0_t* varD1, GenericSharedDeclarations_SharedOf_int32_0_t* varD2, GenericSharedDeclarations_SharedOf_int32_0_t* varD3, GenericSharedDeclarations_SharedOf_int32_0_t* varD4) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarD4 = varD4;
    GenericSyncDeclarations_startSyncFor1Mutex(&(myVarD4)->mutex);
    {
      myVarD4->value = 4;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(myVarD4)->mutex);
  }
  /* 
   * As varD4 is the only pointer to a shared and written shared resource, a variant of writer1() is called which does not synchronize varA1 and varA3. This variant, in return will call a variant of synchronizer() which synchronizes
   * only varC4 as no other argument points to an actually shared(!) resource for the call inside the variant of writer1().
   */

  lock_ellision_writer1_0(varD1, varD2, varD3, varD4);
  lock_ellision_taskInit_a3a4(varD4);
}

static void lock_ellision_synchronizer(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC1 = varC1;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC2 = varC2;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC3 = varC3;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC4 = varC4;
    {
      myVarC1->value;
      myVarC2->value;
      myVarC3->value;
      myVarC4->value;
    }
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
        myVarC1->value;
        myVarC2->value;
        myVarC3->value;
      }
      GenericSyncDeclarations_stopSyncFor3Mutexes(&(myVarC1)->mutex, &(myVarC2)->mutex, &(myVarC3)->mutex);
      myVarC4->value;
    }
  }
}

static void lock_ellision_writer1_0(GenericSharedDeclarations_SharedOf_int32_0_t* varA1, GenericSharedDeclarations_SharedOf_int32_0_t* varA2, GenericSharedDeclarations_SharedOf_int32_0_t* varA3, GenericSharedDeclarations_SharedOf_int32_0_t* varA4) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarA1 = varA1;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarA3 = varA3;
    {
      myVarA1->value = 1;
      myVarA3->value = 3;
    }
  }
  /* 
   * varA1 and varA3 are obviously written, furthermore varA2 via varB2 in writer2(); varA4 is not written
   * => see conclusion in writer2()
   */

  lock_ellision_synchronizer_1(varA1, varA2, varA3, varA4);
}

static void lock_ellision_synchronizer_1(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC1 = varC1;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC2 = varC2;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC3 = varC3;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC4 = varC4;
    {
      myVarC1->value;
      myVarC2->value;
      myVarC3->value;
      GenericSyncDeclarations_startSyncFor1Mutex(&(myVarC4)->mutex);
      {
        myVarC4->value;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(myVarC4)->mutex);
    }
  }
}

static void lock_ellision_synchronizer_2(GenericSharedDeclarations_SharedOf_int32_0_t* varC1, GenericSharedDeclarations_SharedOf_int32_0_t* varC2, GenericSharedDeclarations_SharedOf_int32_0_t* varC3, GenericSharedDeclarations_SharedOf_int32_0_t* varC4) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC1 = varC1;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC2 = varC2;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC3 = varC3;
    GenericSharedDeclarations_SharedOf_int32_0_t* myVarC4 = varC4;
    {
      GenericSyncDeclarations_startSyncFor3Mutexes(&(myVarC1)->mutex, &(myVarC2)->mutex, &(myVarC3)->mutex);
      {
        myVarC1->value;
        myVarC2->value;
        myVarC3->value;
      }
      GenericSyncDeclarations_stopSyncFor3Mutexes(&(myVarC1)->mutex, &(myVarC2)->mutex, &(myVarC3)->mutex);
      myVarC4->value;
    }
  }
}

static void* lock_ellision_parFun_a9a1(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a9a1_t* args = ((lock_ellision_Args_a9a1_t*)(voidArgs));
  *result = (args)->var1Pointer;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a01a1(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a01a1_t* args = ((lock_ellision_Args_a01a1_t*)(voidArgs));
  *result = (args)->var2Pointer;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a11a1(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a11a1_t* args = ((lock_ellision_Args_a11a1_t*)(voidArgs));
  *result = (args)->var3Pointer;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a21a1(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a21a1_t* args = ((lock_ellision_Args_a21a1_t*)(voidArgs));
  *result = (args)->var4Pointer;
  free(voidArgs);
  return result;
}

static void* lock_ellision_parFun_a3a4(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  lock_ellision_Args_a3a4_t* args = ((lock_ellision_Args_a3a4_t*)(voidArgs));
  *result = (args)->varD4;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a9a1(GenericSharedDeclarations_SharedOf_int32_0_t* var1Pointer) 
{
  lock_ellision_Args_a9a1_t* args_a9a1 = malloc(sizeof(lock_ellision_Args_a9a1_t));
  args_a9a1->var1Pointer = var1Pointer;
  return (GenericTaskDeclarations_Task_t){args_a9a1,&lock_ellision_parFun_a9a1,sizeof(lock_ellision_Args_a9a1_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a01a1(GenericSharedDeclarations_SharedOf_int32_0_t* var2Pointer) 
{
  lock_ellision_Args_a01a1_t* args_a01a1 = malloc(sizeof(lock_ellision_Args_a01a1_t));
  args_a01a1->var2Pointer = var2Pointer;
  return (GenericTaskDeclarations_Task_t){args_a01a1,&lock_ellision_parFun_a01a1,sizeof(lock_ellision_Args_a01a1_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a11a1(GenericSharedDeclarations_SharedOf_int32_0_t* var3Pointer) 
{
  lock_ellision_Args_a11a1_t* args_a11a1 = malloc(sizeof(lock_ellision_Args_a11a1_t));
  args_a11a1->var3Pointer = var3Pointer;
  return (GenericTaskDeclarations_Task_t){args_a11a1,&lock_ellision_parFun_a11a1,sizeof(lock_ellision_Args_a11a1_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a21a1(GenericSharedDeclarations_SharedOf_int32_0_t* var4Pointer) 
{
  lock_ellision_Args_a21a1_t* args_a21a1 = malloc(sizeof(lock_ellision_Args_a21a1_t));
  args_a21a1->var4Pointer = var4Pointer;
  return (GenericTaskDeclarations_Task_t){args_a21a1,&lock_ellision_parFun_a21a1,sizeof(lock_ellision_Args_a21a1_t)};
}

static inline GenericTaskDeclarations_Task_t lock_ellision_taskInit_a3a4(GenericSharedDeclarations_SharedOf_int32_0_t* varD4) 
{
  lock_ellision_Args_a3a4_t* args_a3a4 = malloc(sizeof(lock_ellision_Args_a3a4_t));
  args_a3a4->varD4 = varD4;
  return (GenericTaskDeclarations_Task_t){args_a3a4,&lock_ellision_parFun_a3a4,sizeof(lock_ellision_Args_a3a4_t)};
}

