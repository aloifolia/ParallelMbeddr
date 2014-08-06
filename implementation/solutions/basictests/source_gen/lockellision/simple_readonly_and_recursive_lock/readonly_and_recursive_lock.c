#include "readonly_and_recursive_lock.h"


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
  /* 
   * this lock cannot be removed because of .set
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(i).mutex);
  {
    i.value;
    {
      /* 
       * this lock can be removed because of its recursiveness
       */

      {
        i.value = 5;
      }
    }
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(i).mutex);
  
  
  return 0;
}

