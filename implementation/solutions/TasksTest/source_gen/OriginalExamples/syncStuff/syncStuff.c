#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "syncStuff_SharedTypes_0.h"

static struct GenericSharedDeclarations_SharedInt_0* syncStuff_global;

static struct GenericSharedDeclarations_SharedInt_0 syncStuff_global2;

static int32_t* syncStuff_globalLeak;

struct syncStuff_SharedContainer {
  struct GenericSharedDeclarations_SharedInt_0 i;
};

struct syncStuff_SharedPointerContainer {
  int32_t* i;
};

struct syncStuff_ArrayContainerContainer {
  struct syncStuff_SharedTypes_0_SharedArrayContainer_Array_0 a;
};

struct syncStuff_ArrayArrayContainer {
  struct syncStuff_SharedTypes_0_ArrayContainer c;
};

int32_t main(int32_t argc, char* argv[]) 
{
  syncStuff_initAllGlobalMutexes_0();
  
  
  
  
  
  
  return 0;
}


void syncStuff_initGlobalMutexesFor1Module_0(void) 
{
  GenericSharedDeclarations_initMutex_0(&syncStuff_global2.mutexAttribute, &syncStuff_global2.mutex);
}


void syncStuff_initAllGlobalMutexes_0(void) 
{
  syncStuff_initGlobalMutexesFor1Module_0();
}


