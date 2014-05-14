#include "testSync.h"


#include "testSync2.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"

static struct GenericSharedDeclarations_SharedInt32_0 testSync_i;

struct testSync_ContainsShared {
  struct GenericSharedDeclarations_SharedInt8_0 myShared;
};

struct testSync_ContainsArray {
  struct testSync_ContainsShared myArray[42];
};

static void testSync_testFunc(void);

static inline void testSync_init_i_0(struct GenericSharedDeclarations_SharedInt16_0* i);

static inline void testSync_destroy_i_0(struct GenericSharedDeclarations_SharedInt16_0* i);

static inline void testSync_init_iCopy_0(struct GenericSharedDeclarations_SharedInt16_0* iCopy);

static inline void testSync_destroy_iCopy_0(struct GenericSharedDeclarations_SharedInt16_0* iCopy);

static inline void testSync_init_i2_0(struct GenericSharedDeclarations_SharedInt32_0* i2);

static inline void testSync_destroy_i2_0(struct GenericSharedDeclarations_SharedInt32_0* i2);

static inline void testSync_destroy_foos_0(struct testSync_ContainsArray* foos);

static void testSync_bar(struct testSync_ContainsArray* i);

static inline void testSync_init_foos_0(struct testSync_ContainsArray* foos);

int32_t main(int32_t argc, char* argv[]) 
{
  testSync_initGlobalMutexes_0();
  struct GenericSharedDeclarations_SharedInt16_0 i;
  testSync_init_i_0(&i);
  struct GenericSharedDeclarations_SharedInt16_0 iCopy;
  testSync_init_iCopy_0(&iCopy);
  struct GenericSharedDeclarations_SharedInt32_0 i2;
  testSync_init_i2_0(&i2);
  
  for ( int8_t __j = 0; __j < 34; __j++ )
  {
    __j + 6;
  }

  testSync_destroyGlobalMutexes_0();
  testSync_destroy_i_0(&i);
  testSync_destroy_iCopy_0(&iCopy);
  testSync_destroy_i2_0(&i2);
  return 0;
}


static void testSync_testFunc(void) 
{
  if ( 0 ) 
  {
    return ;
  }

  if ( 1 ) 
  {
    struct testSync_ContainsArray foos[] = {{
    },{
    },{
    },{
    }};
    testSync_init_foos_0(foos);
    testSync_bar(foos);
    int8_t i = 0;
    testSync_destroy_foos_0(foos);
    return ;
    if ( 0 ) 
    {
      testSync_destroy_foos_0(foos);
      return ;
    }

    testSync_destroy_foos_0(foos);
  }
  else 
  {
    return ;
  }

}


void testSync_initGlobalMutexes_0(void) 
{
  GenericSharedDeclarations_initMutex_0(&testSync_i.mutexAttribute, &testSync_i.mutex);
  GenericSharedDeclarations_initMutex_0(&testSync2_a1.mutexAttribute, &testSync2_a1.mutex);
  GenericSharedDeclarations_initMutex_0(&testSync2_a2.mutexAttribute, &testSync2_a2.mutex);
}


void testSync_destroyGlobalMutexes_0(void) 
{
  GenericSharedDeclarations_destroyMutex_0(&testSync_i.mutex);
  GenericSharedDeclarations_destroyMutex_0(&testSync2_a1.mutex);
  GenericSharedDeclarations_destroyMutex_0(&testSync2_a2.mutex);
}


static  void testSync_init_i_0(struct GenericSharedDeclarations_SharedInt16_0* i) 
{
  GenericSharedDeclarations_initMutex_0(&i->mutexAttribute, &i->mutex);
}


static  void testSync_destroy_i_0(struct GenericSharedDeclarations_SharedInt16_0* i) 
{
  GenericSharedDeclarations_destroyMutex_0(&i->mutex);
}


static  void testSync_init_iCopy_0(struct GenericSharedDeclarations_SharedInt16_0* iCopy) 
{
  GenericSharedDeclarations_initMutex_0(&iCopy->mutexAttribute, &iCopy->mutex);
}


static  void testSync_destroy_iCopy_0(struct GenericSharedDeclarations_SharedInt16_0* iCopy) 
{
  GenericSharedDeclarations_destroyMutex_0(&iCopy->mutex);
}


static  void testSync_init_i2_0(struct GenericSharedDeclarations_SharedInt32_0* i2) 
{
  GenericSharedDeclarations_initMutex_0(&i2->mutexAttribute, &i2->mutex);
}


static  void testSync_destroy_i2_0(struct GenericSharedDeclarations_SharedInt32_0* i2) 
{
  GenericSharedDeclarations_destroyMutex_0(&i2->mutex);
}


static  void testSync_destroy_foos_0(struct testSync_ContainsArray* foos) 
{
  for ( int8_t __i_0 = 0; __i_0 < 4; __i_0++ )
  {
    for ( int8_t __i_1 = 0; __i_1 < 42; __i_1++ )
    {
      GenericSharedDeclarations_destroyMutex_0(&foos[__i_0].myArray[__i_1].myShared.mutex);
    }

  }

}


static void testSync_bar(struct testSync_ContainsArray* i) 
{
  i[3];
}


static  void testSync_init_foos_0(struct testSync_ContainsArray* foos) 
{
  for ( int8_t __i_0 = 0; __i_0 < 4; __i_0++ )
  {
    for ( int8_t __i_1 = 0; __i_1 < 42; __i_1++ )
    {
      GenericSharedDeclarations_initMutex_0(&foos[__i_0].myArray[__i_1].myShared.mutexAttribute, &foos[__i_0].myArray[__i_1].myShared.mutex);
    }

  }

}


