#include "shared_types_global.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "shared_types_global_SharedTypes_0.h"
#include <pthread.h>

static GenericSharedDeclarations_SharedOf_boolean_0_t shared_types_global_x1;

static GenericSharedDeclarations_SharedOf_int32_0_t shared_types_global_x2;

static shared_types_global_SharedTypes_0_SharedOf_A_0_t shared_types_global_x3;

static shared_types_global_SharedTypes_0_SharedOf_ArrayOf_A_0_t shared_types_global_x4;

static shared_types_global_SharedTypes_0_SharedOf_ArrayOf_ArrayOf_A_0_t shared_types_global_x5;

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  shared_types_global_initAllGlobalMutexes_0();
  
  return 0;
}

void shared_types_global_initGlobalMutexesFor1Module_0(void) 
{
  pthread_mutex_init(&shared_types_global_x1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_init(&shared_types_global_x2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_init(&shared_types_global_x3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_init(&shared_types_global_x4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_init(&shared_types_global_x5.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void shared_types_global_initAllGlobalMutexes_0(void) 
{
  shared_types_global_initGlobalMutexesFor1Module_0();
}

