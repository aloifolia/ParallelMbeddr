#include "shared_types_lift.h"


#include "user.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  user_SharedTypes_0_SharedOf_B1_0_t b1;
  user_SharedTypes_0_mutexInit_3(&b1);
  
  return 0;
}

