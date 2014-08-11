#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void syncStuff_foo12(GenericSharedDeclarations_SharedOf_int32_0_t* x, GenericSharedDeclarations_SharedOf_int32_0_t* y);

static void syncStuff_foo13(GenericSharedDeclarations_SharedOf_int32_0_t* z);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  syncStuff_foo12(0, 0);
  return 0;
}

static void syncStuff_foo12(GenericSharedDeclarations_SharedOf_int32_0_t* x, GenericSharedDeclarations_SharedOf_int32_0_t* y) 
{
  /* 
   * sync must not be removed!
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(x)->mutex);
  {
    syncStuff_foo12(x, x);
    syncStuff_foo13(x);
    syncStuff_foo13(y);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(x)->mutex);
  /* 
   * sync leak!!
   */

}

static void syncStuff_foo13(GenericSharedDeclarations_SharedOf_int32_0_t* z) 
{
  /* 
   * sync must not be removed!
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(z)->mutex);
  {
    z->value = 5;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(z)->mutex);
}

