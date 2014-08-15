#include "otherStuff.h"


#include "second.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "otherStuff_SharedTypes_0.h"
#include <pthread.h>

static void otherStuff_bar(int32_t** x);

static void otherStuff_foo(otherStuff_SharedTypes_0_SharedOf_A_0_t hiThere[6][6][6]);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0_t two[2][1];
  GenericSharedDeclarations_mutexInit_1(((GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0_t**)(two)), 2, 1);
  GenericSharedDeclarations_SharedOf_ArrayOf_ArrayOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  {
    i.value[0][1];
  }
  GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0_t xss;
  GenericSharedDeclarations_mutexInit_0(&xss);
  GenericSharedDeclarations_SharedOf_int32_0_t y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t y2 = y;
  pthread_mutex_init(&y2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  return 0;
}

static void otherStuff_bar(int32_t** x) 
{
  
}

static void otherStuff_foo(otherStuff_SharedTypes_0_SharedOf_A_0_t hiThere[6][6][6]) 
{
  GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_0_t five;
  GenericSharedDeclarations_mutexInit_3(&five);
  GenericSharedDeclarations_SharedOf_SharedOf_int32_0_0_t v;
  GenericSharedDeclarations_mutexInit_0(&v);
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* w = &(v.value);
  }
  GenericSharedDeclarations_SharedOf_int32_0_t val[1][2];
  GenericSharedDeclarations_mutexInit_4(((GenericSharedDeclarations_SharedOf_int32_0_t**)(val)), 1, 2);
  GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_int32_0_1_t three;
  GenericSharedDeclarations_mutexInit_5(&three);
  otherStuff_SharedTypes_0_A_t val3;
  otherStuff_SharedTypes_0_mutexInit_6(&val3);
  otherStuff_SharedTypes_0_SharedOf_A_0_t val2;
  otherStuff_SharedTypes_0_mutexInit_7(&val2);
  GenericSharedDeclarations_SharedOf_int32_0_t x;
  pthread_mutex_init(&x.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  while (true)
  {
    GenericSharedDeclarations_SharedOf_int32_0_t myShared;
    pthread_mutex_init(&myShared.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    if ( true ) 
    {
      pthread_mutex_destroy(&myShared.mutex);
      break;
    }
    pthread_mutex_destroy(&myShared.mutex);
  }
  GenericSharedDeclarations_mutexDestroy_3(&five);
  GenericSharedDeclarations_mutexDestroy_0(&v);
  GenericSharedDeclarations_mutexDestroy_4(((GenericSharedDeclarations_SharedOf_int32_0_t**)(val)), 1, 2);
  GenericSharedDeclarations_mutexDestroy_5(&three);
  otherStuff_SharedTypes_0_mutexDestroy_6(&val3);
  otherStuff_SharedTypes_0_mutexDestroy_7(&val2);
  pthread_mutex_destroy(&x.mutex);
}

