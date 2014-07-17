#include "testSync.h"


#include "testSync2.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void testSync_foo(void);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  testSync_initAllGlobalMutexes_0();
  testSync_destroyAllGlobalMutexes_0();
  return 0;
}


static void testSync_foo(void) 
{
  
  struct GenericSharedDeclarations_SharedOf_int16_0 i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  goto HERE;

  if ( 1 ) 
  {
    pthread_mutex_destroy(&i.mutex);
    return ;
  }

  while (1)
  {
    struct GenericSharedDeclarations_SharedOf_int32_0 j;
    pthread_mutex_init(&j.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    if ( 0 ) 
    {
      struct GenericSharedDeclarations_SharedOf_int32_0 j2;
      pthread_mutex_init(&j2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&j.mutex);
      pthread_mutex_destroy(&j2.mutex);
      break;
      pthread_mutex_destroy(&j.mutex);
      pthread_mutex_destroy(&j2.mutex);
      continue;
    }

    int16_t k = 3;
    pthread_mutex_destroy(&j.mutex);
  }

  switch (0)
  {
    case 1: {
      struct GenericSharedDeclarations_SharedOf_int32_0 j;
      pthread_mutex_init(&j.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&j.mutex);
      break;
    }
    case 0: {
      struct GenericSharedDeclarations_SharedOf_int32_0 j;
      pthread_mutex_init(&j.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&j.mutex);
    }
  }

  
  HERE:

  pthread_mutex_destroy(&i.mutex);
}


void testSync_initAllGlobalMutexes_0(void) 
{
}


void testSync_destroyAllGlobalMutexes_0(void) 
{
}


