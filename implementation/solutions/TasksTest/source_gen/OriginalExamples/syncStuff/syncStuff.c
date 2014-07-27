#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "syncStuff_SharedTypes_0.h"
#include <pthread.h>

typedef GenericSharedDeclarations_SharedOf_int32_0_t syncStuff_sharedInt1x;
int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  syncStuff_SharedTypes_0_A4_t a;
  syncStuff_SharedTypes_0_mutexInit_0(&a);
  
  
  
  
  
  
  
  return 0;
}

