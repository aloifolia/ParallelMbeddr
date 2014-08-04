#include "shared_types_complex_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"

void shared_types_complex_SharedTypes_0_mutexDestroy_13(shared_types_complex_SharedTypes_0_A4_t* var) 
{
  GenericSharedDeclarations_mutexDestroy_12(((GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t*)(var->s)), 6);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_0(shared_types_complex_SharedTypes_0_B1_t* var) 
{
  pthread_mutex_destroy(&var->s.mutex);
}

void shared_types_complex_SharedTypes_0_mutexInit_14(shared_types_complex_SharedTypes_0_SharedOf_A4_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  shared_types_complex_SharedTypes_0_mutexInit_13(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexInit_10(shared_types_complex_SharedTypes_0_SharedOf_A3_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  shared_types_complex_SharedTypes_0_mutexInit_9(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexInit_2(shared_types_complex_SharedTypes_0_SharedOf_A1_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  shared_types_complex_SharedTypes_0_mutexInit_1(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_11(shared_types_complex_SharedTypes_0_SharedOf_SharedOf_A3_0_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  shared_types_complex_SharedTypes_0_mutexDestroy_10(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexInit_7(shared_types_complex_SharedTypes_0_SharedOf_A2_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  shared_types_complex_SharedTypes_0_mutexInit_6(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexInit_5(shared_types_complex_SharedTypes_0_B2_t* var, int32_t size_0) 
{
  for ( int32_t __i_3 = 0; __i_3 < size_0; __i_3++ )
  {
    shared_types_complex_SharedTypes_0_mutexInit_4(&var[__i_3]);
  }
}

void shared_types_complex_SharedTypes_0_mutexInit_0(shared_types_complex_SharedTypes_0_B1_t* var) 
{
  pthread_mutex_init(&var->s.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_14(shared_types_complex_SharedTypes_0_SharedOf_A4_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  shared_types_complex_SharedTypes_0_mutexDestroy_13(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_7(shared_types_complex_SharedTypes_0_SharedOf_A2_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  shared_types_complex_SharedTypes_0_mutexDestroy_6(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexInit_11(shared_types_complex_SharedTypes_0_SharedOf_SharedOf_A3_0_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  shared_types_complex_SharedTypes_0_mutexInit_10(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_10(shared_types_complex_SharedTypes_0_SharedOf_A3_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  shared_types_complex_SharedTypes_0_mutexDestroy_9(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexInit_9(shared_types_complex_SharedTypes_0_A3_t* var) 
{
  GenericSharedDeclarations_mutexInit_8(((GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t*)(var->s1)), 6);
  GenericSharedDeclarations_mutexInit_8(((GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t*)(var->s2)), 6);
}

void shared_types_complex_SharedTypes_0_mutexInit_13(shared_types_complex_SharedTypes_0_A4_t* var) 
{
  GenericSharedDeclarations_mutexInit_12(((GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t*)(var->s)), 6);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_1(shared_types_complex_SharedTypes_0_A1_t* var) 
{
  shared_types_complex_SharedTypes_0_mutexDestroy_0(&var->b);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_2(shared_types_complex_SharedTypes_0_SharedOf_A1_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  shared_types_complex_SharedTypes_0_mutexDestroy_1(&var->value);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_5(shared_types_complex_SharedTypes_0_B2_t* var, int32_t size_0) 
{
  for ( int32_t __i_3 = 0; __i_3 < size_0; __i_3++ )
  {
    shared_types_complex_SharedTypes_0_mutexDestroy_4(&var[__i_3]);
  }
}

void shared_types_complex_SharedTypes_0_mutexDestroy_9(shared_types_complex_SharedTypes_0_A3_t* var) 
{
  GenericSharedDeclarations_mutexDestroy_8(((GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t*)(var->s1)), 6);
  GenericSharedDeclarations_mutexDestroy_8(((GenericSharedDeclarations_SharedOf_ArrayOf_int32_1_t*)(var->s2)), 6);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_6(shared_types_complex_SharedTypes_0_A2_t* var) 
{
  shared_types_complex_SharedTypes_0_mutexDestroy_0(&var->b1);
  shared_types_complex_SharedTypes_0_mutexDestroy_5(((shared_types_complex_SharedTypes_0_B2_t*)(var->b2)), 4);
}

void shared_types_complex_SharedTypes_0_mutexInit_1(shared_types_complex_SharedTypes_0_A1_t* var) 
{
  shared_types_complex_SharedTypes_0_mutexInit_0(&var->b);
}

void shared_types_complex_SharedTypes_0_mutexInit_4(shared_types_complex_SharedTypes_0_B2_t* var) 
{
  GenericSharedDeclarations_mutexInit_3(((GenericSharedDeclarations_SharedOf_int32_0_t***)(var->s)), 3, 2, 1);
}

void shared_types_complex_SharedTypes_0_mutexDestroy_4(shared_types_complex_SharedTypes_0_B2_t* var) 
{
  GenericSharedDeclarations_mutexDestroy_3(((GenericSharedDeclarations_SharedOf_int32_0_t***)(var->s)), 3, 2, 1);
}

void shared_types_complex_SharedTypes_0_mutexInit_6(shared_types_complex_SharedTypes_0_A2_t* var) 
{
  shared_types_complex_SharedTypes_0_mutexInit_0(&var->b1);
  shared_types_complex_SharedTypes_0_mutexInit_5(((shared_types_complex_SharedTypes_0_B2_t*)(var->b2)), 4);
}

