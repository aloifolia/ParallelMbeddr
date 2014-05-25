#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"

static struct GenericSharedDeclarations_SharedInt32_0* syncStuff_global;

static struct GenericSharedDeclarations_SharedInt32_0 syncStuff_global2;

struct syncStuff_SharedContainer {
  struct GenericSharedDeclarations_SharedInt32_0 i;
};

static inline void syncStuff_init_sharedVal_0(struct GenericSharedDeclarations_SharedInt32_0* sharedVal);

static inline void syncStuff_destroy_sharedVal_0(struct GenericSharedDeclarations_SharedInt32_0* sharedVal);

static void syncStuff_startSync_0(pthread_mutex_t* mutex_0,pthread_mutex_t* mutex_1);

static void syncStuff_stopSync_0(pthread_mutex_t* mutex_2,pthread_mutex_t* mutex_3);

static inline void syncStuff_destroy_container_0(struct syncStuff_SharedContainer* container);

static inline void syncStuff_init_container_0(struct syncStuff_SharedContainer* container);

int32_t main(int32_t argc, char* argv[]) 
{
  syncStuff_initAllGlobalMutexes_0();
  struct syncStuff_SharedContainer container;
  syncStuff_init_container_0(&container);
  struct GenericSharedDeclarations_SharedInt32_0 sharedVal;
  syncStuff_init_sharedVal_0(&sharedVal);
  {
    struct GenericSharedDeclarations_SharedInt32_0* containerI = &(container.i);
    syncStuff_startSync_0(&(sharedVal.mutex), &(containerI->mutex));
    {
      sharedVal.value = 5;
      containerI->value = 6;
    }

    syncStuff_stopSync_0(&(sharedVal.mutex), &(containerI->mutex));
  }

  syncStuff_destroyAllGlobalMutexes_0();
  syncStuff_destroy_container_0(&container);
  syncStuff_destroy_sharedVal_0(&sharedVal);
  return 0;
}


void syncStuff_initGlobalMutexesFor1Module_0(void) 
{
  GenericSharedDeclarations_initMutex_0(&syncStuff_global2.mutexAttribute, &syncStuff_global2.mutex);
}


void syncStuff_destroyGlobalMutexesFor1Module_0(void) 
{
  GenericSharedDeclarations_destroyMutex_0(&syncStuff_global2.mutex);
}


void syncStuff_initAllGlobalMutexes_0(void) 
{
  syncStuff_destroyGlobalMutexesFor1Module_0();
}


void syncStuff_destroyAllGlobalMutexes_0(void) 
{
  syncStuff_initGlobalMutexesFor1Module_0();
}


static  void syncStuff_init_sharedVal_0(struct GenericSharedDeclarations_SharedInt32_0* sharedVal) 
{
  GenericSharedDeclarations_initMutex_0(&sharedVal->mutexAttribute, &sharedVal->mutex);
}


static  void syncStuff_destroy_sharedVal_0(struct GenericSharedDeclarations_SharedInt32_0* sharedVal) 
{
  GenericSharedDeclarations_destroyMutex_0(&sharedVal->mutex);
}


static void syncStuff_startSync_0(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1) 
{
  while (1)
  {
    if ( mutex_trylock(mutex_0) != 0 ) 
    {
      continue;
    }

    if ( mutex_trylock(mutex_1) != 0 ) 
    {
      mutex_unlock(mutex_0);
      continue;
    }

    break;
  }

}


static void syncStuff_stopSync_0(pthread_mutex_t* mutex_2, pthread_mutex_t* mutex_3) 
{
  mutex_unlock(mutex_2);
  mutex_unlock(mutex_3);
}


static  void syncStuff_destroy_container_0(struct syncStuff_SharedContainer* container) 
{
  GenericSharedDeclarations_destroyMutex_0(&container->i.mutex);
}


static  void syncStuff_init_container_0(struct syncStuff_SharedContainer* container) 
{
  GenericSharedDeclarations_initMutex_0(&container->i.mutexAttribute, &container->i.mutex);
}


