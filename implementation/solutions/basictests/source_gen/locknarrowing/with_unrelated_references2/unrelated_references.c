#include "unrelated_references.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void unrelated_references_doHeavyWork(GenericSharedDeclarations_SharedOf_int32_0_t* value);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t x;
  pthread_mutex_init(&x.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  GenericSyncDeclarations_startSyncFor1Mutex(&y.mutex);
  {
    y.value = 5;
    GenericSyncDeclarations_startSyncFor1Mutex(&x.mutex);
    {
      unrelated_references_doHeavyWork(&x);
      x.value = 5;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&x.mutex);
    unrelated_references_doHeavyWork(&y);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&y.mutex);
  
  return 0;
}

static void unrelated_references_doHeavyWork(GenericSharedDeclarations_SharedOf_int32_0_t* value) 
{
  
}

