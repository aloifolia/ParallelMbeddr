#include "shared_types_complex.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "shared_types_complex_SharedTypes_0.h"
#include <pthread.h>

typedef GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t shared_types_complex_sharedInt5x;
typedef GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t shared_types_complex_sharedInt1x;
int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  shared_types_complex_SharedTypes_0_A1_t a1;
  shared_types_complex_SharedTypes_0_mutexInit_1(&a1);
  shared_types_complex_SharedTypes_0_SharedOf_A1_0_t a2;
  shared_types_complex_SharedTypes_0_mutexInit_2(&a2);
  shared_types_complex_SharedTypes_0_SharedOf_PointerOf_SharedOf_A1_0_0_t a3;
  pthread_mutex_init(&a3.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  shared_types_complex_SharedTypes_0_A2_t a4;
  shared_types_complex_SharedTypes_0_mutexInit_6(&a4);
  shared_types_complex_SharedTypes_0_SharedOf_A2_0_t a5;
  shared_types_complex_SharedTypes_0_mutexInit_7(&a5);
  shared_types_complex_SharedTypes_0_SharedOf_PointerOf_SharedOf_A2_0_0_t a6;
  pthread_mutex_init(&a6.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  shared_types_complex_sharedInt5x s1;
  pthread_mutex_init(&s1.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t* s1Pointer = &s1;
  shared_types_complex_SharedTypes_0_A3_t a7;
  shared_types_complex_SharedTypes_0_mutexInit_9(&a7);
  shared_types_complex_SharedTypes_0_SharedOf_SharedOf_A3_0_0_t a8;
  shared_types_complex_SharedTypes_0_mutexInit_11(&a8);
  
  shared_types_complex_sharedInt1x a9;
  pthread_mutex_init(&a9.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  shared_types_complex_SharedTypes_0_A4_t a10;
  shared_types_complex_SharedTypes_0_mutexInit_13(&a10);
  shared_types_complex_SharedTypes_0_SharedOf_A4_0_t a11;
  shared_types_complex_SharedTypes_0_mutexInit_14(&a11);
  
  return 0;
}

