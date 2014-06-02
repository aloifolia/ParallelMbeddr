#ifndef TESTSYNC_SHAREDTYPES_0_H
#define TESTSYNC_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include "testSync2.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct testSync_SharedTypes_0_B {
  struct testSync2_A a;
};

struct testSync_SharedTypes_0_SharedOf_B_0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  struct testSync_SharedTypes_0_B value;
};


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
