#include "otherStuff.h"


#include "second.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "otherStuff_SharedTypes_0.h"
#include <pthread.h>

static void otherStuff_bar(int32_t** x);

static void otherStuff_foo(struct otherStuff_SharedTypes_0_SharedOf_A_0 hiThere[6][6][6]);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  struct GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0 two[2][1];
  GenericSharedDeclarations_mutexInit_1(((struct GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0**)(two)), 2, 1);
  struct GenericSharedDeclarations_SharedOf_ArrayOf_ArrayOf_int32_0 i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSyncDeclarations_startSyncFor1Mutex(&i.mutex);
  {
    i.value[0][1];
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&i.mutex);
  struct GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0 xss;
  GenericSharedDeclarations_mutexInit_0(&xss);
  struct GenericSharedDeclarations_SharedOf_int32_0 y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  struct GenericSharedDeclarations_SharedOf_int32_0 y2 = y;
  pthread_mutex_init(&y2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSyncDeclarations_startSyncFor1Mutex(&xss.mutex);
  {
    xss.value = y;
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&xss.mutex);
  
  return 0;
}


static void otherStuff_bar(int32_t** x) 
{
  
}


static void otherStuff_foo(struct otherStuff_SharedTypes_0_SharedOf_A_0 hiThere[6][6][6]) 
{
  otherStuff_SharedTypes_0_mutexInit_8(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
  struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0 five;
  GenericSharedDeclarations_mutexInit_3(&five);
  struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0* fiveAgain = &five;
  struct GenericSharedDeclarations_SharedOf_int32_0* first = &(<!TextGen not found for 'TasksAndSyncs.structure.SyncRessourceRef'!>.<!TextGen not found for 'TasksAndSyncs.structure.SharedGet'!>[0]);
  GenericSyncDeclarations_startSyncFor3Mutexes(&<!TextGen not found for 'TasksAndSyncs.structure.SyncRessource'!>.mutex, &fiveAgain->mutex, &first->mutex);
  {
    first->value = 5;
  }

  GenericSyncDeclarations_stopSyncFor3Mutexes(&<!TextGen not found for 'TasksAndSyncs.structure.SyncRessource'!>.mutex, &fiveAgain->mutex, &first->mutex);
  <!TextGen not found for 'TasksAndSyncs.structure.SyncRessourceRef'!>;
  struct GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0 v;
  GenericSharedDeclarations_mutexInit_0(&v);
  struct GenericSharedDeclarations_SharedOf_int32_0 val[1][2];
  GenericSharedDeclarations_mutexInit_4(((struct GenericSharedDeclarations_SharedOf_int32_0**)(val)), 1, 2);
  struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1 three;
  GenericSharedDeclarations_mutexInit_5(&three);
  struct otherStuff_SharedTypes_0_A val3;
  otherStuff_SharedTypes_0_mutexInit_6(&val3);
  struct otherStuff_SharedTypes_0_SharedOf_A_0 val2;
  otherStuff_SharedTypes_0_mutexInit_7(&val2);
  struct GenericSharedDeclarations_SharedOf_int32_0 x;
  pthread_mutex_init(&x.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  while (1)
  {
    struct GenericSharedDeclarations_SharedOf_int32_0 myShared;
    pthread_mutex_init(&myShared.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    if ( 1 ) 
    {
      pthread_mutex_destroy(&myShared.mutex);
      break;
    }

    pthread_mutex_destroy(&myShared.mutex);
  }

  if ( 0 ) 
  {
    GenericSharedDeclarations_mutexDestroy_3(&five);
    GenericSharedDeclarations_mutexDestroy_0(&v);
    GenericSharedDeclarations_mutexDestroy_4(((struct GenericSharedDeclarations_SharedOf_int32_0**)(val)), 1, 2);
    GenericSharedDeclarations_mutexDestroy_5(&three);
    otherStuff_SharedTypes_0_mutexDestroy_6(&val3);
    otherStuff_SharedTypes_0_mutexDestroy_7(&val2);
    pthread_mutex_destroy(&x.mutex);
    otherStuff_SharedTypes_0_mutexDestroy_8(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
    return ;
  }

  if ( 1 ) 
  {
    struct otherStuff_SharedTypes_0_SharedOf_A_0 hiToo;
    otherStuff_SharedTypes_0_mutexInit_7(&hiToo);
    if ( 0 ) 
    {
      GenericSharedDeclarations_mutexDestroy_3(&five);
      GenericSharedDeclarations_mutexDestroy_0(&v);
      GenericSharedDeclarations_mutexDestroy_4(((struct GenericSharedDeclarations_SharedOf_int32_0**)(val)), 1, 2);
      GenericSharedDeclarations_mutexDestroy_5(&three);
      otherStuff_SharedTypes_0_mutexDestroy_6(&val3);
      otherStuff_SharedTypes_0_mutexDestroy_7(&val2);
      pthread_mutex_destroy(&x.mutex);
      otherStuff_SharedTypes_0_mutexDestroy_7(&hiToo);
      otherStuff_SharedTypes_0_mutexDestroy_8(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
      return ;
    }

    otherStuff_SharedTypes_0_mutexDestroy_7(&hiToo);
  }

  GenericSharedDeclarations_mutexDestroy_3(&five);
  GenericSharedDeclarations_mutexDestroy_0(&v);
  GenericSharedDeclarations_mutexDestroy_4(((struct GenericSharedDeclarations_SharedOf_int32_0**)(val)), 1, 2);
  GenericSharedDeclarations_mutexDestroy_5(&three);
  otherStuff_SharedTypes_0_mutexDestroy_6(&val3);
  otherStuff_SharedTypes_0_mutexDestroy_7(&val2);
  pthread_mutex_destroy(&x.mutex);
  otherStuff_SharedTypes_0_mutexDestroy_8(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
}


