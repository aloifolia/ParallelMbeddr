#ifndef TESTSYNC2_H
#define TESTSYNC2_H


#include <stdint.h>

#include <stddef.h>

#include "testSync.h"

#include "GenericTaskDeclarations.h"

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct testSync2_A {
};

struct testSync2_SharedA _1 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  struct testSync2_A value;
};


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
