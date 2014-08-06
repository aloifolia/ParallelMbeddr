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
  
  {
    GenericSharedDeclarations_SharedOf_int32_0_t s2;
    pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    pthread_mutex_destroy(&s1.mutex);
    pthread_mutex_destroy(&s2.mutex);
    return ;
    GenericSyncDeclarations_startSyncFor1Mutex(&(s1).mutex);
    {
      {
        s1.value = s2.value;
      }
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(s1).mutex);
    pthread_mutex_destroy(&s2.mutex);
  }
  
  pthread_mutex_destroy(&s1.mutex);
}

static void syncs_stop_foo2(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  {
    GenericSharedDeclarations_SharedOf_int32_0_t s2;
    pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    /* 
     * TODO: evtl. für sync über lokale Variable darin testen (funzt bisher nicht)
     */

    GenericSyncDeclarations_startSyncFor1Mutex(&(s1).mutex);
    {
      {
        s1.value = s2.value;
      }
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(s1).mutex);
    pthread_mutex_destroy(&s2.mutex);
  }
  pthread_mutex_destroy(&s1.mutex);
}

static void syncs_stop_foo3(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  {
    GenericSharedDeclarations_SharedOf_int32_0_t s2;
    pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    GenericSyncDeclarations_startSyncFor1Mutex(&(s1).mutex);
    {
      while (true)
      {
        GenericSharedDeclarations_SharedOf_int32_0_t s3;
        pthread_mutex_init(&s3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
        {
          GenericSharedDeclarations_SharedOf_int32_0_t s4;
          pthread_mutex_init(&s4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
          s1.value = s2.value;
          pthread_mutex_destroy(&s3.mutex);
          pthread_mutex_destroy(&s4.mutex);
          break;
        }
        pthread_mutex_destroy(&s3.mutex);
      }
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(s1).mutex);
    pthread_mutex_destroy(&s2.mutex);
  }
  pthread_mutex_destroy(&s1.mutex);
}

static void syncs_stop_foo4(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  {
    GenericSharedDeclarations_SharedOf_int32_0_t s2;
    pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    
    switch (0)
    {
      case 1: {
        GenericSharedDeclarations_SharedOf_int32_0_t s3;
        pthread_mutex_init(&s3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
        {
          pthread_mutex_destroy(&s3.mutex);
          break;
          GenericSyncDeclarations_startSyncFor1Mutex(&(s3).mutex);
          {
            s3.value = 1;
          }
          GenericSyncDeclarations_stopSyncFor1Mutex(&(s3).mutex);
        }
        pthread_mutex_destroy(&s3.mutex);
      }
      case 2: {
        GenericSharedDeclarations_SharedOf_int32_0_t s3;
        pthread_mutex_init(&s3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
        {
          GenericSyncDeclarations_startSyncFor1Mutex(&(s3).mutex);
          {
            s3.value = 1;
          }
          GenericSyncDeclarations_stopSyncFor1Mutex(&(s3).mutex);
          pthread_mutex_destroy(&s3.mutex);
          break;
        }
        pthread_mutex_destroy(&s3.mutex);
      }
      case 3: {
        GenericSharedDeclarations_SharedOf_int32_0_t s3;
        pthread_mutex_init(&s3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
        {
          GenericSyncDeclarations_startSyncFor1Mutex(&(s3).mutex);
          {
            s3.value = 1;
          }
          GenericSyncDeclarations_stopSyncFor1Mutex(&(s3).mutex);
          pthread_mutex_destroy(&s3.mutex);
          break;
        }
        GenericSharedDeclarations_SharedOf_int32_0_t s4;
        pthread_mutex_init(&s4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
        pthread_mutex_destroy(&s3.mutex);
        pthread_mutex_destroy(&s4.mutex);
      }
    }

    pthread_mutex_destroy(&s2.mutex);
  }
  pthread_mutex_destroy(&s1.mutex);
}

static void syncs_stop_foo5(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  {
    goto l1;

    GenericSharedDeclarations_SharedOf_int32_0_t s2;
    pthread_mutex_init(&s2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    {
      l1:

      pthread_mutex_destroy(&s2.mutex);
      goto l2;

      GenericSyncDeclarations_startSyncFor1Mutex(&(s2).mutex);
      {
        s2.value = 2;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(s2).mutex);
    }
    pthread_mutex_destroy(&s2.mutex);
  }
  l2:

  pthread_mutex_destroy(&s1.mutex);
}

