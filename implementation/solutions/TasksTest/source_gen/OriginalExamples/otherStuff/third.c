#include "third.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static struct GenericSharedDeclarations_SharedOf_int32_0 third_i;

void third_initGlobalMutexesFor1Module_0(void) 
{
  pthread_mutex_init(&third_i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}


void third_destroyGlobalMutexesFor1Module_0(void) 
{
  pthread_mutex_destroy(&third_i.mutex);
}


