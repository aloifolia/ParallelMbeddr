#ifndef GENERICSYNCDECLARATIONS_H
#define GENERICSYNCDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

void GenericSyncDeclarations_startSync_0(pthread_mutex_t* mutex_0,pthread_mutex_t* mutex_1,pthread_mutex_t* mutex_2);

void GenericSyncDeclarations_stopSync_0(pthread_mutex_t* mutex_3,pthread_mutex_t* mutex_4,pthread_mutex_t* mutex_5);

void GenericSyncDeclarations_startSync_1(pthread_mutex_t* mutex_6,pthread_mutex_t* mutex_7);

void GenericSyncDeclarations_stopSync_1(pthread_mutex_t* mutex_8,pthread_mutex_t* mutex_9);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
