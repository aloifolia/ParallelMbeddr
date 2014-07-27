#include "shared_types.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "shared_types_SharedTypes_0.h"
#include <pthread.h>

static void shared_types_foo(GenericSharedDeclarations_SharedOf_double_0_t* x, GenericSharedDeclarations_SharedOf_boolean_0_t y);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_char_0_t x1;
  pthread_mutex_init(&x1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t x2;
  pthread_mutex_init(&x2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  shared_types_SharedTypes_0_SharedOf_A_0_t x3;
  pthread_mutex_init(&x3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  shared_types_SharedTypes_0_SharedOf_ArrayOf_A_0_t x4;
  pthread_mutex_init(&x4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  shared_types_SharedTypes_0_SharedOf_ArrayOf_ArrayOf_A_0_t x5;
  pthread_mutex_init(&x5.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  return 0;
}

static void shared_types_foo(GenericSharedDeclarations_SharedOf_double_0_t* x, GenericSharedDeclarations_SharedOf_boolean_0_t y) 
{
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  pthread_mutex_destroy(&y.mutex);
}

