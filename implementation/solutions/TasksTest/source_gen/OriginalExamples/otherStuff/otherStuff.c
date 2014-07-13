#include "otherStuff.h"


#include "second.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "otherStuff_SharedTypes_0.h"
#include <pthread.h>

static void otherStuff_foo(struct otherStuff_SharedTypes_0_SharedOf_A_0 hiThere[6][6][6]);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  otherStuff_initAllGlobalMutexes_0();
  struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0 two;
  pthread_mutex_init(&two.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  otherStuff_destroyAllGlobalMutexes_0();
  pthread_mutex_destroy(&two.mutex);
  return 0;
}


static void otherStuff_foo(struct otherStuff_SharedTypes_0_SharedOf_A_0 hiThere[6][6][6]) 
{
  otherStuff_SharedTypes_0_mutexInit_6(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
  struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1 five;
  pthread_mutex_init(&five.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  struct GenericSharedDeclarations_SharedOf_int32_0 val[1][2];
  GenericSharedDeclarations_mutexInit_3(((struct GenericSharedDeclarations_SharedOf_int32_0**)(val)), 1, 2);
  struct otherStuff_SharedTypes_0_A val3;
  otherStuff_SharedTypes_0_mutexInit_4(&val3);
  struct otherStuff_SharedTypes_0_SharedOf_A_0 val2;
  otherStuff_SharedTypes_0_mutexInit_5(&val2);
  struct GenericSharedDeclarations_SharedOf_int32_0 x;
  pthread_mutex_init(&x.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  while (1)
  {
    struct GenericSharedDeclarations_SharedOf_int32_0 myShared;
    pthread_mutex_init(&myShared.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    if ( 1 ) 
    {
      break;
    }

    pthread_mutex_destroy(&myShared.mutex);
  }

  if ( 0 ) 
  {
    pthread_mutex_destroy(&five.mutex);
    GenericSharedDeclarations_mutexDestroy_3(((struct GenericSharedDeclarations_SharedOf_int32_0**)(val)), 1, 2);
    otherStuff_SharedTypes_0_mutexDestroy_4(&val3);
    otherStuff_SharedTypes_0_mutexDestroy_5(&val2);
    pthread_mutex_destroy(&x.mutex);
    otherStuff_SharedTypes_0_mutexDestroy_6(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
    return ;
  }

  if ( 1 ) 
  {
    struct otherStuff_SharedTypes_0_SharedOf_A_0 hiToo;
    otherStuff_SharedTypes_0_mutexInit_5(&hiToo);
    if ( 0 ) 
    {
      pthread_mutex_destroy(&five.mutex);
      GenericSharedDeclarations_mutexDestroy_3(((struct GenericSharedDeclarations_SharedOf_int32_0**)(val)), 1, 2);
      otherStuff_SharedTypes_0_mutexDestroy_4(&val3);
      otherStuff_SharedTypes_0_mutexDestroy_5(&val2);
      pthread_mutex_destroy(&x.mutex);
      otherStuff_SharedTypes_0_mutexDestroy_5(&hiToo);
      otherStuff_SharedTypes_0_mutexDestroy_6(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
      return ;
    }

    otherStuff_SharedTypes_0_mutexDestroy_5(&hiToo);
  }

  pthread_mutex_destroy(&five.mutex);
  GenericSharedDeclarations_mutexDestroy_3(((struct GenericSharedDeclarations_SharedOf_int32_0**)(val)), 1, 2);
  otherStuff_SharedTypes_0_mutexDestroy_4(&val3);
  otherStuff_SharedTypes_0_mutexDestroy_5(&val2);
  pthread_mutex_destroy(&x.mutex);
  otherStuff_SharedTypes_0_mutexDestroy_6(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
}


void otherStuff_initAllGlobalMutexes_0(void) 
{
}


void otherStuff_destroyAllGlobalMutexes_0(void) 
{
}


