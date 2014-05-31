#ifndef SYNCSTUFF_SHAREDTYPES_0_H
#define SYNCSTUFF_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct syncStuff_SharedTypes_0_ArrayContainer {
  int32_t val[5];
};

struct syncStuff_SharedTypes_0_SharedOf_ArrayOf_ArrayContainer_0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  struct syncStuff_SharedTypes_0_ArrayContainer value[5];
};


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
