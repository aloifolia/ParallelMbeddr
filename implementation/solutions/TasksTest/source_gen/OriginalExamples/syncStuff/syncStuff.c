#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "syncStuff_SharedTypes_0.h"
#include <pthread.h>

static syncStuff_SharedTypes_0_SharedOf_A_0_t syncStuff_globalA;

static syncStuff_SharedTypes_0_SharedOf_A_0_t* syncStuff_foo1(void);

static GenericSharedDeclarations_SharedOf_int32_0_t* syncStuff_foo(void);

static syncStuff_SharedTypes_0_SharedOf_A_0_t* syncStuff_foo1(void) 
{
  return &syncStuff_globalA;
}

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  syncStuff_initAllGlobalMutexes_0();
  
  
  
  
  
  
  
  
  return 0;
}

static GenericSharedDeclarations_SharedOf_int32_0_t* syncStuff_foo(void) 
{
  
}

void syncStuff_initGlobalMutexesFor1Module_0(void) 
{
  pthread_mutex_init(&syncStuff_globalA.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void syncStuff_initAllGlobalMutexes_0(void) 
{
  syncStuff_initGlobalMutexesFor1Module_0();
}

