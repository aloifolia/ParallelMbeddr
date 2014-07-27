#include "syncs_no_statements.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  
  GenericSharedDeclarations_SharedOf_int32_0_t vShared;
  pthread_mutex_init(&vShared.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  return 0;
}

