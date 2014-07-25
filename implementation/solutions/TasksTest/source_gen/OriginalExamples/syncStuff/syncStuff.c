#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "syncStuff_SharedTypes_0.h"
#include <pthread.h>

static GenericSharedDeclarations_SharedOf_int32_0_t* syncStuff_global;

static GenericSharedDeclarations_SharedOf_int32_0_t syncStuff_global2;

static int32_t* syncStuff_globalLeak;

typedef GenericSharedDeclarations_SharedOf_int32_0_t* syncStuff_APrime;
typedef GenericSharedDeclarations_SharedOf_APrime_0_t syncStuff_B;
typedef struct syncStuff_SharedPointerContainer syncStuff_SharedPointerContainer_t;
struct syncStuff_SharedPointerContainer {
  int32_t* i;
};

typedef struct syncStuff_ArrayArrayContainer syncStuff_ArrayArrayContainer_t;
struct syncStuff_ArrayArrayContainer {
  syncStuff_SharedTypes_0_ArrayContainer_t c;
};

typedef GenericSharedDeclarations_SharedOf_PointerOf_SharedOf_int32_0_0_t syncStuff_A;
typedef syncStuff_A syncStuff_C;
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

