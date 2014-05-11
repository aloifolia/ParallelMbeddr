#ifndef TESTSYNC_H
#define TESTSYNC_H


#include <stdint.h>

#include <stddef.h>

#include "GenericTaskDeclarations.h"

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct testSync_A {
};

typedef struct testSync_A AB;
struct testSync_SharedAB _0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  AB value;
};

struct testSync_SharedA _0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  struct testSync_A value;
};

int32_t testSync_main(int32_t argc,char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
