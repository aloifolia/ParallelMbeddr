#include "syncs_multiple_resources.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static GenericSharedDeclarations_SharedOf_double_0_t* syncs_multiple_resources_decide(GenericSharedDeclarations_SharedOf_double_0_t* either, GenericSharedDeclarations_SharedOf_double_0_t* or);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  
  GenericSharedDeclarations_SharedOf_int32_0_t* v;
  GenericSharedDeclarations_SharedOf_double_0_t either;
  pthread_mutex_init(&either.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_double_0_t or;
  pthread_mutex_init(&or.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  {
    GenericSharedDeclarations_SharedOf_double_0_t* choice = syncs_multiple_resources_decide(&or, &either);
    GenericSyncDeclarations_startSyncFor2Mutexes(&v->mutex, &choice->mutex);
    {
      choice->value = v->value;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&v->mutex, &choice->mutex);
  }
  
  return 0;
}

static GenericSharedDeclarations_SharedOf_double_0_t* syncs_multiple_resources_decide(GenericSharedDeclarations_SharedOf_double_0_t* either, GenericSharedDeclarations_SharedOf_double_0_t* or) 
{
  return either;
}

