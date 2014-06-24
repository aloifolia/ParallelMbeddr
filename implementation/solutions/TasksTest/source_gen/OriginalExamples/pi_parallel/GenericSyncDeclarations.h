#ifndef GENERICSYNCDECLARATIONS_H
#define GENERICSYNCDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <time.h>

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

void GenericSyncDeclarations_startSyncFor1Mutex(pthread_mutex_t* mutex_0);

void GenericSyncDeclarations_stopSyncFor1Mutex(pthread_mutex_t* mutex_1);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
