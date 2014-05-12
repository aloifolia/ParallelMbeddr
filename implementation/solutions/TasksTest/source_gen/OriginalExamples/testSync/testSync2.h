#ifndef TESTSYNC2_H
#define TESTSYNC2_H


#include <stdint.h>

#include <stddef.h>

#include "GenericTaskDeclarations.h"

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct testSync2_A {
};

struct testSync2_SharedA_0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  struct testSync2_A value;
};

extern struct testSync2_SharedA_0 testSync2_a2;

extern struct testSync2_SharedA_0 testSync2_a1;


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
