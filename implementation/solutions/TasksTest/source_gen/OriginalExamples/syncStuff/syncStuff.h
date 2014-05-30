#ifndef SYNCSTUFF_H
#define SYNCSTUFF_H


#include <stdint.h>

#include <stddef.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct syncStuff_SharedA_0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  struct syncStuff_A value;
};

int32_t syncStuff_main(int32_t argc,char* argv[]);

void syncStuff_initGlobalMutexesFor1Module_0(void);

void syncStuff_initAllGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
