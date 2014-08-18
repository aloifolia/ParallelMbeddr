#include "testSync.h"


#include "testSync2.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "testSync_SharedTypes_0.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct testSync_Args_a5a0 testSync_Args_a5a0_t;
struct testSync_Args_a5a0 {
  testSync_SharedTypes_0_SharedOf_AB_0_t* abP;
};

static void* testSync_parFun_a5a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t testSync_taskInit_a5a0(testSync_SharedTypes_0_SharedOf_AB_0_t* abP);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  
  GenericSharedDeclarations_SharedOf_int32_0_t myShared;
  pthread_mutex_init(&myShared.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  {
    myShared.value = 5;
    if ( true ) 
    {
      return 1;
    }
  }
  testSync_SharedTypes_0_SharedOf_AB_0_t ab;
  testSync_SharedTypes_0_mutexInit_1(&ab);
  testSync_SharedTypes_0_SharedOf_AB_0_t* abP = &ab;
  testSync_taskInit_a5a0(abP);
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* x = ab.value.val;
    GenericSharedDeclarations_SharedOf_int32_0_t* y = &ab.value.val2;
    GenericSyncDeclarations_startSyncFor2Mutexes(&(x)->mutex, &(y)->mutex);
    {
      x->value = 5;
      y->value = 6;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&(x)->mutex, &(y)->mutex);
  }
  return 0;
}

static void* testSync_parFun_a5a0(void* voidArgs) 
{
  testSync_SharedTypes_0_SharedOf_AB_0_t** result = malloc(sizeof(testSync_SharedTypes_0_SharedOf_AB_0_t*));
  testSync_Args_a5a0_t* args = ((testSync_Args_a5a0_t*)(voidArgs));
  *result = (args)->abP;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t testSync_taskInit_a5a0(testSync_SharedTypes_0_SharedOf_AB_0_t* abP) 
{
  testSync_Args_a5a0_t* args_a5a0 = malloc(sizeof(testSync_Args_a5a0_t));
  args_a5a0->abP = abP;
  return (GenericTaskDeclarations_Task_t){args_a5a0,&testSync_parFun_a5a0,sizeof(testSync_Args_a5a0_t)};
}

