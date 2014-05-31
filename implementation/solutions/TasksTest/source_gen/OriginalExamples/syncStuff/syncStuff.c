#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "syncStuff_SharedTypes_0.h"

static struct GenericSharedDeclarations_SharedOf_int32_0* syncStuff_global;

static struct GenericSharedDeclarations_SharedOf_int32_0 syncStuff_global2;

static int32_t* syncStuff_globalLeak;

typedef struct GenericSharedDeclarations_SharedOf_int32_0* APrime;
typedef struct GenericSharedDeclarations_SharedOf_PointerOf_SharedOf_int32_0 B;
struct syncStuff_SharedContainer {
  struct GenericSharedDeclarations_SharedOf_int32_0 i;
};

struct syncStuff_SharedPointerContainer {
  int32_t* i;
};

struct syncStuff_ArrayContainerContainer {
  struct syncStuff_SharedTypes_0_SharedOf_ArrayOf_ArrayContainer_0 a;
};

struct syncStuff_ArrayArrayContainer {
  struct syncStuff_SharedTypes_0_ArrayContainer c;
};

typedef struct GenericSharedDeclarations_SharedOf_PointerOf_SharedOf_int32_0 A;
typedef A C;
static inline void syncStuff_init_x_0(struct GenericSharedDeclarations_SharedOf_int32_0* x);

static inline void syncStuff_destroy_x_0(struct GenericSharedDeclarations_SharedOf_int32_0* x);

int32_t main(int32_t argc, char* argv[]) 
{
  syncStuff_initAllGlobalMutexes_0();
  
  
  
  
  
  struct GenericSharedDeclarations_SharedOf_int32_0 x;
  syncStuff_init_x_0(&x);
  
  syncStuff_destroy_x_0(&x);
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


static  void syncStuff_init_x_0(struct GenericSharedDeclarations_SharedOf_int32_0* x) 
{
  GenericSharedDeclarations_initMutex_0(&x->mutexAttribute, &x->mutex);
}


static  void syncStuff_destroy_x_0(struct GenericSharedDeclarations_SharedOf_int32_0* x) 
{
  GenericSharedDeclarations_destroyMutex_0(&x->mutex);
}


