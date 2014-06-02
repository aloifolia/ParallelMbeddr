#include "testSync.h"


#include "testSync2.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "testSync_SharedTypes_0.h"

static struct testSync_SharedTypes_0_SharedOf_B_0 testSync_b;

static inline void testSync_init_i_0(struct GenericSharedDeclarations_SharedOf_int16_0* i);

static inline void testSync_destroy_i_0(struct GenericSharedDeclarations_SharedOf_int16_0* i);

static inline void testSync_init_iCopy_0(struct GenericSharedDeclarations_SharedOf_int16_0* iCopy);

static inline void testSync_destroy_iCopy_0(struct GenericSharedDeclarations_SharedOf_int16_0* iCopy);

static inline void testSync_init_i2_0(struct GenericSharedDeclarations_SharedOf_int32_0* i2);

static inline void testSync_destroy_i2_0(struct GenericSharedDeclarations_SharedOf_int32_0* i2);

int32_t main(int32_t argc, char* argv[]) 
{
  testSync_initAllGlobalMutexes_0();
  struct GenericSharedDeclarations_SharedOf_int16_0 i;
  testSync_init_i_0(&i);
  struct GenericSharedDeclarations_SharedOf_int16_0 iCopy;
  testSync_init_iCopy_0(&iCopy);
  struct GenericSharedDeclarations_SharedOf_int32_0 i2;
  testSync_init_i2_0(&i2);
  for ( int8_t __j = 0; __j < 34; __j++ )
  {
    __j + 6;
  }

  testSync_destroy_i_0(&i);
  testSync_destroy_iCopy_0(&iCopy);
  testSync_destroy_i2_0(&i2);
  return 0;
}


void testSync_initGlobalMutexesFor1Module_0(void) 
{
  GenericSharedDeclarations_initMutex_0(&testSync_b.mutexAttribute, &testSync_b.mutex);
}


void testSync_initAllGlobalMutexes_0(void) 
{
  testSync_initGlobalMutexesFor1Module_0();
}


static  void testSync_init_i_0(struct GenericSharedDeclarations_SharedOf_int16_0* i) 
{
  GenericSharedDeclarations_initMutex_0(&i->mutexAttribute, &i->mutex);
}


static  void testSync_destroy_i_0(struct GenericSharedDeclarations_SharedOf_int16_0* i) 
{
  GenericSharedDeclarations_destroyMutex_0(&i->mutex);
}


static  void testSync_init_iCopy_0(struct GenericSharedDeclarations_SharedOf_int16_0* iCopy) 
{
  GenericSharedDeclarations_initMutex_0(&iCopy->mutexAttribute, &iCopy->mutex);
}


static  void testSync_destroy_iCopy_0(struct GenericSharedDeclarations_SharedOf_int16_0* iCopy) 
{
  GenericSharedDeclarations_destroyMutex_0(&iCopy->mutex);
}


static  void testSync_init_i2_0(struct GenericSharedDeclarations_SharedOf_int32_0* i2) 
{
  GenericSharedDeclarations_initMutex_0(&i2->mutexAttribute, &i2->mutex);
}


static  void testSync_destroy_i2_0(struct GenericSharedDeclarations_SharedOf_int32_0* i2) 
{
  GenericSharedDeclarations_destroyMutex_0(&i2->mutex);
}


