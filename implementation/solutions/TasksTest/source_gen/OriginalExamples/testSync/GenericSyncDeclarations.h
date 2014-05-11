#ifndef GENERICSYNCDECLARATIONS_H
#define GENERICSYNCDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct GenericSyncDeclarations_SharedInt32 _0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  int32_t value;
};

struct GenericSyncDeclarations_SharedInt16 _0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  int16_t value;
};


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
