#include "otherStuff.h"


#include "second.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "otherStuff_SharedTypes_0.h"
#include "third.h"
#include <pthread.h>

static struct otherStuff_SharedTypes_0_SharedOf_A_0 otherStuff_myA;

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  otherStuff_initAllGlobalMutexes_0();
  
  otherStuff_destroyAllGlobalMutexes_0();
  return 0;
}


void otherStuff_initGlobalMutexesFor1Module_1(void) 
{
  otherStuff_SharedTypes_0_mutexInit_1(&otherStuff_myA);
}


void otherStuff_destroyGlobalMutexesFor1Module_1(void) 
{
  otherStuff_SharedTypes_0_mutexDestroy_1(&otherStuff_myA);
}


void otherStuff_initAllGlobalMutexes_0(void) 
{
  third_initGlobalMutexesFor1Module_0();
  otherStuff_initGlobalMutexesFor1Module_1();
}


void otherStuff_destroyAllGlobalMutexes_0(void) 
{
  third_destroyGlobalMutexesFor1Module_0();
  otherStuff_destroyGlobalMutexesFor1Module_1();
}


