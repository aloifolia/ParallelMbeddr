#include "otherStuff.h"


#include "second.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "otherStuff_SharedTypes_0.h"
#include <pthread.h>

static struct otherStuff_SharedTypes_0_SharedOf_A_0 otherStuff_myA;

static void otherStuff_foo(struct otherStuff_SharedTypes_0_SharedOf_A_0 hiThere[6][6][6]);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  otherStuff_initAllGlobalMutexes_0();
  
  otherStuff_destroyAllGlobalMutexes_0();
  return 0;
}


static void otherStuff_foo(struct otherStuff_SharedTypes_0_SharedOf_A_0 hiThere[6][6][6]) 
{
  otherStuff_SharedTypes_0_mutexInit_2(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
  int32_t i[1][2][3];
  ((int32_t***)(i));
  if ( 0 ) 
  {
    otherStuff_SharedTypes_0_mutexDestroy_2(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
    return ;
  }

  if ( 1 ) 
  {
    struct otherStuff_SharedTypes_0_SharedOf_A_0 hiToo;
    otherStuff_SharedTypes_0_mutexInit_1(&hiToo);
    if ( 0 ) 
    {
      otherStuff_SharedTypes_0_mutexDestroy_1(&hiToo);
      otherStuff_SharedTypes_0_mutexDestroy_2(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
      return ;
    }

    otherStuff_SharedTypes_0_mutexDestroy_1(&hiToo);
  }

  otherStuff_SharedTypes_0_mutexDestroy_2(((struct otherStuff_SharedTypes_0_SharedOf_A_0***)(hiThere)), 4, 5, 6);
}


void otherStuff_initGlobalMutexesFor1Module_0(void) 
{
  otherStuff_SharedTypes_0_mutexInit_1(&otherStuff_myA);
}


void otherStuff_destroyGlobalMutexesFor1Module_0(void) 
{
  otherStuff_SharedTypes_0_mutexDestroy_1(&otherStuff_myA);
}


void otherStuff_initAllGlobalMutexes_0(void) 
{
  otherStuff_initGlobalMutexesFor1Module_0();
}


void otherStuff_destroyAllGlobalMutexes_0(void) 
{
  otherStuff_destroyGlobalMutexesFor1Module_0();
}


