#include "syncs_multiple_resources.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "syncs_multiple_resources_SharedTypes_0.h"
#include <pthread.h>

static syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t* syncs_multiple_resources_decide(syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t* either, syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t* or);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  
  GenericSharedDeclarations_SharedOf_int32_0_t* v;
  syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t either;
  pthread_mutex_init(&either.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t or;
  pthread_mutex_init(&or.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  {
    syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t* choice = syncs_multiple_resources_decide(&or, &either);
    GenericSharedDeclarations_SharedOf_double_0_t* field = choice->value.field;
    GenericSyncDeclarations_startSyncFor3Mutexes(&v->mutex, &choice->mutex, &field->mutex);
    {
      choice->value = v->value;
    }
    GenericSyncDeclarations_stopSyncFor3Mutexes(&v->mutex, &choice->mutex, &field->mutex);
  }
  
  return 0;
}

static syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t* syncs_multiple_resources_decide(syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t* either, syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t* or) 
{
  return either;
}

