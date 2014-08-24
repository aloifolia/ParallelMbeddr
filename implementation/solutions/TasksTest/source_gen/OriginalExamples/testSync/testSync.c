#include "testSync.h"


#include "testSync2.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct testSync_Args_a7a0 testSync_Args_a7a0_t;
struct testSync_Args_a7a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* p1P;
};

typedef struct testSync_Args_a8a0 testSync_Args_a8a0_t;
struct testSync_Args_a8a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* p2P;
};

typedef struct testSync_Args_a9a0 testSync_Args_a9a0_t;
struct testSync_Args_a9a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* p3P;
};

static void testSync_teste(GenericSharedDeclarations_SharedOf_int32_0_t* v1, GenericSharedDeclarations_SharedOf_int32_0_t* v2);

static void* testSync_parFun_a7a0(void* voidArgs);

static void* testSync_parFun_a8a0(void* voidArgs);

static void* testSync_parFun_a9a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t testSync_taskInit_a7a0(GenericSharedDeclarations_SharedOf_int32_0_t* p1P);

static inline GenericTaskDeclarations_Task_t testSync_taskInit_a8a0(GenericSharedDeclarations_SharedOf_int32_0_t* p2P);

static inline GenericTaskDeclarations_Task_t testSync_taskInit_a9a0(GenericSharedDeclarations_SharedOf_int32_0_t* p3P);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t p1;
  pthread_mutex_init(&p1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* p1P = &p1;
  GenericSharedDeclarations_SharedOf_int32_0_t p2;
  pthread_mutex_init(&p2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* p2P = &p2;
  GenericSharedDeclarations_SharedOf_int32_0_t p3;
  pthread_mutex_init(&p3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* p3P = &p3;
  
  testSync_taskInit_a7a0(p1P);
  testSync_taskInit_a8a0(p2P);
  testSync_taskInit_a9a0(p3P);
  
  testSync_teste(p1P, p1P);
  testSync_teste(p2P, p1P);
  
  return 0;
}

static void testSync_teste(GenericSharedDeclarations_SharedOf_int32_0_t* v1, GenericSharedDeclarations_SharedOf_int32_0_t* v2) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* w1 = v1;
    GenericSharedDeclarations_SharedOf_int32_0_t* w2 = v2;
    GenericSyncDeclarations_startSyncFor2Mutexes(&(w1)->mutex, &(w2)->mutex);
    {
      w1->value = 1;
      w2->value = 2;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&(w1)->mutex, &(w2)->mutex);
  }
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* w22 = v2;
    GenericSharedDeclarations_SharedOf_int32_0_t* w11 = v1;
    GenericSyncDeclarations_startSyncFor2Mutexes(&(w22)->mutex, &(w11)->mutex);
    {
      w11->value = 1;
      w22->value = 2;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&(w22)->mutex, &(w11)->mutex);
  }
}

static void* testSync_parFun_a7a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  testSync_Args_a7a0_t* args = ((testSync_Args_a7a0_t*)(voidArgs));
  *result = (args)->p1P;
  free(voidArgs);
  return result;
}

static void* testSync_parFun_a8a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  testSync_Args_a8a0_t* args = ((testSync_Args_a8a0_t*)(voidArgs));
  *result = (args)->p2P;
  free(voidArgs);
  return result;
}

static void* testSync_parFun_a9a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  testSync_Args_a9a0_t* args = ((testSync_Args_a9a0_t*)(voidArgs));
  *result = (args)->p3P;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t testSync_taskInit_a7a0(GenericSharedDeclarations_SharedOf_int32_0_t* p1P) 
{
  testSync_Args_a7a0_t* args_a7a0 = malloc(sizeof(testSync_Args_a7a0_t));
  args_a7a0->p1P = p1P;
  return (GenericTaskDeclarations_Task_t){args_a7a0,&testSync_parFun_a7a0,sizeof(testSync_Args_a7a0_t)};
}

static inline GenericTaskDeclarations_Task_t testSync_taskInit_a8a0(GenericSharedDeclarations_SharedOf_int32_0_t* p2P) 
{
  testSync_Args_a8a0_t* args_a8a0 = malloc(sizeof(testSync_Args_a8a0_t));
  args_a8a0->p2P = p2P;
  return (GenericTaskDeclarations_Task_t){args_a8a0,&testSync_parFun_a8a0,sizeof(testSync_Args_a8a0_t)};
}

static inline GenericTaskDeclarations_Task_t testSync_taskInit_a9a0(GenericSharedDeclarations_SharedOf_int32_0_t* p3P) 
{
  testSync_Args_a9a0_t* args_a9a0 = malloc(sizeof(testSync_Args_a9a0_t));
  args_a9a0->p3P = p3P;
  return (GenericTaskDeclarations_Task_t){args_a9a0,&testSync_parFun_a9a0,sizeof(testSync_Args_a9a0_t)};
}

