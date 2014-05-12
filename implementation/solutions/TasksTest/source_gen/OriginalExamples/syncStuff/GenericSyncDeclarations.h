#ifndef GENERICSYNCDECLARATIONS_H
#define GENERICSYNCDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

void GenericSyncDeclarations_initMutex_0(pthread_mutexattr_t* mutexAttribute,pthread_mutex_t* mutex);

void GenericSyncDeclarations_destroyMutex_0(pthread_mutex_t* mutex);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
