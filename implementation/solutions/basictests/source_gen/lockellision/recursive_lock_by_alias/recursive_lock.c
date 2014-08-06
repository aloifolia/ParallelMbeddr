#include "recursive_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j = &i;
  GenericSyncDeclarations_startSyncFor1Mutex(&i.mutex);
  {
    {
      j->value = 5;
    }
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&i.mutex);
  
  return 0;
}

