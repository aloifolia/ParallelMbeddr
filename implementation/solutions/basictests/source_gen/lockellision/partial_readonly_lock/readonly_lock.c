#include "readonly_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void readonly_lock_foo(GenericSharedDeclarations_SharedOf_int32_0_t* x, GenericSharedDeclarations_SharedOf_int32_0_t* y);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t a;
  pthread_mutex_init(&a.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t b;
  pthread_mutex_init(&b.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  readonly_lock_foo(&a, &b);
  readonly_lock_foo(&b, &a);
  
  return 0;
}

static void readonly_lock_foo(GenericSharedDeclarations_SharedOf_int32_0_t* x, GenericSharedDeclarations_SharedOf_int32_0_t* y) 
{
  /* 
   * although only y is set, x's sync cannot be removed
   */

  {
    y->value = 5;
  }
  readonly_lock_foo(x, y);
}

