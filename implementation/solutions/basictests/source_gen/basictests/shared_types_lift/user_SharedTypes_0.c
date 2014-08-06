#include "user_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"
#include "provider1_SharedTypes_0.h"

void user_SharedTypes_0_mutexInit_2(user_SharedTypes_0_B1_t* var) 
{
  user_SharedTypes_0_mutexInit_1(&var->val);
}

void user_SharedTypes_0_mutexInit_1(user_SharedTypes_0_B2_t* var) 
{
  provider1_SharedTypes_0_mutexInit_0(&var->a);
  pthread_mutex_init(&var->s.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void user_SharedTypes_0_mutexInit_3(user_SharedTypes_0_SharedOf_B1_0_t* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  user_SharedTypes_0_mutexInit_2(&var->value);
}

void user_SharedTypes_0_mutexDestroy_3(user_SharedTypes_0_SharedOf_B1_0_t* var) 
{
  pthread_mutex_destroy(&var->mutex);
  user_SharedTypes_0_mutexDestroy_2(&var->value);
}

void user_SharedTypes_0_mutexDestroy_1(user_SharedTypes_0_B2_t* var) 
{
  provider1_SharedTypes_0_mutexDestroy_0(&var->a);
  pthread_mutex_destroy(&var->s.mutex);
}

void user_SharedTypes_0_mutexDestroy_2(user_SharedTypes_0_B1_t* var) 
{
  user_SharedTypes_0_mutexDestroy_1(&var->val);
}

