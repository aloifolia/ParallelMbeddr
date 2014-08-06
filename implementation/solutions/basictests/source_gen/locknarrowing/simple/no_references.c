#include "no_references.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void no_references_doHeavyWork(void);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t x;
  pthread_mutex_init(&x.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  /* 
   * both doHeavyWork() calls can safely be shifted outside
   */

  {
    no_references_doHeavyWork();
    GenericSyncDeclarations_startSyncFor1Mutex(&(x).mutex);
    {
      x.value = 5;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(x).mutex);
    no_references_doHeavyWork();
  }
  
  return 0;
}

static void no_references_doHeavyWork(void) 
{
  
}

