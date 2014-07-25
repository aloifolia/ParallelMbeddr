#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "syncStuff_SharedTypes_0.h"
#include <pthread.h>

static struct GenericSharedDeclarations_SharedOf_int32_0* syncStuff_global;

static struct GenericSharedDeclarations_SharedOf_int32_0 syncStuff_global2;

static int32_t* syncStuff_globalLeak;

typedef struct GenericSharedDeclarations_SharedOf_int32_0* APrime;
typedef struct GenericSharedDeclarations_SharedOf_APrime_0 B;
struct syncStuff_SharedPointerContainer {
  int32_t* i;
};

struct syncStuff_ArrayArrayContainer {
  struct syncStuff_SharedTypes_0_ArrayContainer c;
};

typedef struct GenericSharedDeclarations_SharedOf_PointerOf_SharedOf_int32_0_0 A;
typedef A C;
int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  syncStuff_initAllGlobalMutexes_0();
  
  
  
  
  
  
  
  return 0;
}


void syncStuff_initGlobalMutexesFor1Module_0(void) 
{
  pthread_mutex_init(&syncStuff_global2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}


void syncStuff_initAllGlobalMutexes_0(void) 
{
  syncStuff_initGlobalMutexesFor1Module_0();
}


