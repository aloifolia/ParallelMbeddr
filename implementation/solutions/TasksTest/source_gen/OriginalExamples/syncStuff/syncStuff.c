#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"

static struct GenericSharedDeclarations_SharedInt_0* syncStuff_global;

static struct GenericSharedDeclarations_SharedInt_0 syncStuff_global2;

static int32_t* syncStuff_globalLeak;

struct syncStuff_SharedPointerContainer {
  int32_t* i;
};

struct syncStuff_ArrayContainerContainer {
  struct GenericSharedDeclarations_SharedArrayContainer_Array_0 a;
};

exported struct syncStuff_A {
};

struct syncStuff_SharedContainer {
  struct GenericSharedDeclarations_SharedInt_0 i;
};

struct syncStuff_ArrayContainer {
  int32_t val[5];
};

struct syncStuff_ArrayArrayContainer {
  struct syncStuff_ArrayContainer c;
};

static inline void syncStuff_init_i_0(struct GenericSharedDeclarations_SharedInt_0* i);

static inline void syncStuff_destroy_i_0(struct GenericSharedDeclarations_SharedInt_0* i);

static inline void syncStuff_init_js_0(struct GenericSharedDeclarations_SharedInt_0 js[]);

static inline void syncStuff_destroy_js_0(struct GenericSharedDeclarations_SharedInt_0 js[]);

static void syncStuff_foo(struct syncStuff_SharedContainer xs[45]);

static inline void syncStuff_destroy_aShared_0(struct syncStuff_SharedA_0* aShared);

static inline void syncStuff_init_xs_0(struct syncStuff_SharedContainer xs[45]);

static inline void syncStuff_destroy_xs_0(struct syncStuff_SharedContainer xs[45]);

static inline void syncStuff_init_aShared_0(struct syncStuff_SharedA_0* aShared);

int32_t main(int32_t argc, char* argv[]) 
{
  syncStuff_initAllGlobalMutexes_0();
  
  
  
  
  
  
  struct syncStuff_SharedA_0 aShared;
  syncStuff_init_aShared_0(&aShared);
  syncStuff_destroy_aShared_0(&aShared);
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


static  void syncStuff_init_i_0(struct GenericSharedDeclarations_SharedInt_0* i) 
{
  GenericSharedDeclarations_initMutex_0(&i->mutexAttribute, &i->mutex);
}


static  void syncStuff_destroy_i_0(struct GenericSharedDeclarations_SharedInt_0* i) 
{
  GenericSharedDeclarations_destroyMutex_0(&i->mutex);
}


static  void syncStuff_init_js_0(struct GenericSharedDeclarations_SharedInt_0 js[]) 
{
  for ( int8_t __i_1 = 0; __i_1 < 2; __i_1++ )
  {
    GenericSharedDeclarations_initMutex_0(&js[__i_1].mutexAttribute, &js[__i_1].mutex);
  }

}


static  void syncStuff_destroy_js_0(struct GenericSharedDeclarations_SharedInt_0 js[]) 
{
  for ( int8_t __i_1 = 0; __i_1 < 2; __i_1++ )
  {
    GenericSharedDeclarations_destroyMutex_0(&js[__i_1].mutex);
  }

}


static void syncStuff_foo(struct syncStuff_SharedContainer xs[45]) 
{
  syncStuff_init_xs_0(xs);
  struct GenericSharedDeclarations_SharedInt_0 i;
  syncStuff_init_i_0(&i);
  struct GenericSharedDeclarations_SharedInt_0 js[] = {i,i};
  syncStuff_init_js_0(js);
  syncStuff_destroy_i_0(&i);
  syncStuff_destroy_js_0(js);
  syncStuff_destroy_xs_0(xs);
}


static  void syncStuff_destroy_aShared_0(struct syncStuff_SharedA_0* aShared) 
{
  GenericSharedDeclarations_destroyMutex_0(&aShared->mutex);
}


static  void syncStuff_init_xs_0(struct syncStuff_SharedContainer xs[45]) 
{
  for ( int8_t __i_2 = 0; __i_2 < 45; __i_2++ )
  {
    GenericSharedDeclarations_initMutex_0(&xs[__i_2].i.mutexAttribute, &xs[__i_2].i.mutex);
  }

}


static  void syncStuff_destroy_xs_0(struct syncStuff_SharedContainer xs[45]) 
{
  for ( int8_t __i_2 = 0; __i_2 < 45; __i_2++ )
  {
    GenericSharedDeclarations_destroyMutex_0(&xs[__i_2].i.mutex);
  }

}


static  void syncStuff_init_aShared_0(struct syncStuff_SharedA_0* aShared) 
{
  GenericSharedDeclarations_initMutex_0(&aShared->mutexAttribute, &aShared->mutex);
}


