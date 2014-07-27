#include "shared_types_destroy.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

typedef struct shared_types_destroy_A shared_types_destroy_A_t;
struct shared_types_destroy_A {
  double val;
};

static GenericSharedDeclarations_SharedOf_boolean_0_t shared_types_destroy_x1;

static void shared_types_destroy_foo1(GenericSharedDeclarations_SharedOf_double_0_t* x, GenericSharedDeclarations_SharedOf_boolean_0_t y);

static void shared_types_destroy_foo2(GenericSharedDeclarations_SharedOf_double_0_t* x, GenericSharedDeclarations_SharedOf_boolean_0_t y);

static void shared_types_destroy_foo3(GenericSharedDeclarations_SharedOf_double_0_t* x, GenericSharedDeclarations_SharedOf_boolean_0_t y);

static void shared_types_destroy_foo4(GenericSharedDeclarations_SharedOf_boolean_0_t y);

static void shared_types_destroy_foo5(GenericSharedDeclarations_SharedOf_boolean_0_t y);

static void shared_types_destroy_foo6(GenericSharedDeclarations_SharedOf_boolean_0_t y);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  shared_types_destroy_initAllGlobalMutexes_0();
  
  return 0;
}

static void shared_types_destroy_foo1(GenericSharedDeclarations_SharedOf_double_0_t* x, GenericSharedDeclarations_SharedOf_boolean_0_t y) 
{
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_char_0_t x1;
  pthread_mutex_init(&x1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  if ( true ) 
  {
    GenericSharedDeclarations_SharedOf_int32_0_t x2;
    pthread_mutex_init(&x2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    pthread_mutex_destroy(&x1.mutex);
    pthread_mutex_destroy(&x2.mutex);
    pthread_mutex_destroy(&y.mutex);
    return ;
    GenericSharedDeclarations_SharedOf_double_0_t x3;
    pthread_mutex_init(&x3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    pthread_mutex_destroy(&x2.mutex);
    pthread_mutex_destroy(&x3.mutex);
  }
  GenericSharedDeclarations_SharedOf_boolean_0_t x4;
  pthread_mutex_init(&x4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_destroy(&x1.mutex);
  pthread_mutex_destroy(&x4.mutex);
  pthread_mutex_destroy(&y.mutex);
}

static void shared_types_destroy_foo2(GenericSharedDeclarations_SharedOf_double_0_t* x, GenericSharedDeclarations_SharedOf_boolean_0_t y) 
{
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_char_0_t x1;
  pthread_mutex_init(&x1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  while (true)
  {
    GenericSharedDeclarations_SharedOf_int32_0_t x2;
    pthread_mutex_init(&x2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    if ( true ) 
    {
      GenericSharedDeclarations_SharedOf_double_0_t x3;
      pthread_mutex_init(&x3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&x2.mutex);
      pthread_mutex_destroy(&x3.mutex);
      break;
    }
    pthread_mutex_destroy(&x1.mutex);
    pthread_mutex_destroy(&x2.mutex);
    pthread_mutex_destroy(&y.mutex);
    return ;
  }
  GenericSharedDeclarations_SharedOf_boolean_0_t x4;
  pthread_mutex_init(&x4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_destroy(&x1.mutex);
  pthread_mutex_destroy(&x4.mutex);
  pthread_mutex_destroy(&y.mutex);
}

static void shared_types_destroy_foo3(GenericSharedDeclarations_SharedOf_double_0_t* x, GenericSharedDeclarations_SharedOf_boolean_0_t y) 
{
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_char_0_t x1_0;
  pthread_mutex_init(&x1_0.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  while (true)
  {
    GenericSharedDeclarations_SharedOf_char_0_t x1_1;
    pthread_mutex_init(&x1_1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
    for ( int16_t i = 0; i < 5; ++i )
    {
      GenericSharedDeclarations_SharedOf_int32_0_t x1_2;
      pthread_mutex_init(&x1_2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&x1_0.mutex);
      pthread_mutex_destroy(&x1_1.mutex);
      pthread_mutex_destroy(&x1_2.mutex);
      pthread_mutex_destroy(&y.mutex);
      return ;
      if ( true ) 
      {
        GenericSharedDeclarations_SharedOf_double_0_t x1;
        pthread_mutex_init(&x1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
        pthread_mutex_destroy(&x1_2.mutex);
        pthread_mutex_destroy(&x1.mutex);
        break;
      }
      pthread_mutex_destroy(&x1_2.mutex);
    }
    pthread_mutex_destroy(&x1_1.mutex);
    break;
  }
  GenericSharedDeclarations_SharedOf_boolean_0_t x4;
  pthread_mutex_init(&x4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_destroy(&x1_0.mutex);
  pthread_mutex_destroy(&x4.mutex);
  pthread_mutex_destroy(&y.mutex);
}

static void shared_types_destroy_foo4(GenericSharedDeclarations_SharedOf_boolean_0_t y) 
{
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_char_0_t x1;
  pthread_mutex_init(&x1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  switch (5)
  {
    case 0: {
      GenericSharedDeclarations_SharedOf_char_0_t x2;
      pthread_mutex_init(&x2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&x2.mutex);
    }
    case 1: {
      GenericSharedDeclarations_SharedOf_char_0_t x2;
      pthread_mutex_init(&x2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&x1.mutex);
      pthread_mutex_destroy(&x2.mutex);
      pthread_mutex_destroy(&y.mutex);
      return ;
    }
    case 2: {
      GenericSharedDeclarations_SharedOf_char_0_t x2;
      pthread_mutex_init(&x2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&x2.mutex);
      break;
      GenericSharedDeclarations_SharedOf_boolean_0_t x3;
      pthread_mutex_init(&x3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
      pthread_mutex_destroy(&x2.mutex);
      pthread_mutex_destroy(&x3.mutex);
    }
  }

  GenericSharedDeclarations_SharedOf_boolean_0_t x4;
  pthread_mutex_init(&x4.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_destroy(&x1.mutex);
  pthread_mutex_destroy(&x4.mutex);
  pthread_mutex_destroy(&y.mutex);
  return ;
}

static void shared_types_destroy_foo5(GenericSharedDeclarations_SharedOf_boolean_0_t y) 
{
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_char_0_t x1;
  pthread_mutex_init(&x1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  l1:

  0;
  
  GenericSharedDeclarations_SharedOf_long_double_0_t x2;
  pthread_mutex_init(&x2.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  goto l2;

  if ( true ) 
  {
    l2:

    pthread_mutex_destroy(&x2.mutex);
    goto l1;

  }
  
  GenericSharedDeclarations_SharedOf_boolean_0_t x3;
  pthread_mutex_init(&x3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_destroy(&x1.mutex);
  pthread_mutex_destroy(&x2.mutex);
  pthread_mutex_destroy(&x3.mutex);
  pthread_mutex_destroy(&y.mutex);
}

static void shared_types_destroy_foo6(GenericSharedDeclarations_SharedOf_boolean_0_t y) 
{
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  /* TODO: auf Reparatur durch itemis warten */
  
  pthread_mutex_destroy(&y.mutex);
  return ;
}

void shared_types_destroy_initGlobalMutexesFor1Module_0(void) 
{
  pthread_mutex_init(&shared_types_destroy_x1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void shared_types_destroy_initAllGlobalMutexes_0(void) 
{
  shared_types_destroy_initGlobalMutexesFor1Module_0();
}

