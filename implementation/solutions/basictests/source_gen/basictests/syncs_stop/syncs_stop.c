#include "syncs_stop.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void syncs_stop_foo1(void);

static void syncs_stop_foo2(void);

static void syncs_stop_foo3(void);

static void syncs_stop_foo4(void);

static void syncs_stop_foo5(void);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  return 0;
}

static void syncs_stop_foo1(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  GenericSharedDeclarations_SharedOf_int32_0_t s2;
  pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_destroy(&s1.mutex);
  pthread_mutex_destroy(&s2.mutex);
  return ;
  {
    {
      s1.value = s2.value;
    }
  }
  
  pthread_mutex_destroy(&s1.mutex);
  pthread_mutex_destroy(&s2.mutex);
}

static void syncs_stop_foo2(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  GenericSharedDeclarations_SharedOf_int32_0_t s2;
  pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  /* 
   * TODO: evtl. für sync über lokale Variable darin testen (funzt bisher nicht)
   */

  {
    {
      s1.value = s2.value;
    }
  }
  pthread_mutex_destroy(&s1.mutex);
  pthread_mutex_destroy(&s2.mutex);
}

static void syncs_stop_foo3(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  GenericSharedDeclarations_SharedOf_int32_0_t s2;
  pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  {
    while (true)
    {
      GenericSharedDeclarations_SharedOf_int32_0_t s3;
      pthread_mutex_init(&s3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      GenericSharedDeclarations_SharedOf_int32_0_t s4;
      pthread_mutex_init(&s4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      {
        s1.value = s2.value;
      }
      pthread_mutex_destroy(&s3.mutex);
      pthread_mutex_destroy(&s4.mutex);
      break;
    }
  }
  pthread_mutex_destroy(&s1.mutex);
  pthread_mutex_destroy(&s2.mutex);
}

static void syncs_stop_foo4(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  GenericSharedDeclarations_SharedOf_int32_0_t s2;
  pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  switch (0)
  {
    case 1: {
      GenericSharedDeclarations_SharedOf_int32_0_t s3;
      pthread_mutex_init(&s3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&s3.mutex);
      break;
      {
        s3.value = 1;
      }
      pthread_mutex_destroy(&s3.mutex);
    }
    case 2: {
      GenericSharedDeclarations_SharedOf_int32_0_t s3;
      pthread_mutex_init(&s3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      {
        s3.value = 1;
      }
      pthread_mutex_destroy(&s3.mutex);
      break;
    }
    case 3: {
      GenericSharedDeclarations_SharedOf_int32_0_t s3;
      pthread_mutex_init(&s3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      {
        s3.value = 1;
      }
      pthread_mutex_destroy(&s3.mutex);
      break;
      GenericSharedDeclarations_SharedOf_int32_0_t s4;
      pthread_mutex_init(&s4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&s3.mutex);
      pthread_mutex_destroy(&s4.mutex);
    }
  }

  pthread_mutex_destroy(&s1.mutex);
  pthread_mutex_destroy(&s2.mutex);
}

static void syncs_stop_foo5(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  goto l1;

  GenericSharedDeclarations_SharedOf_int32_0_t s2;
  pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  l1:

  goto l2;

  {
    s2.value = 2;
  }
  l2:

  pthread_mutex_destroy(&s1.mutex);
  pthread_mutex_destroy(&s2.mutex);
}

