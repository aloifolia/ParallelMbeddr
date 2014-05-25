#ifndef GENERICSYNCDECLARATIONS_H
#define GENERICSYNCDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

void GenericSyncDeclarations_startSync_0(pthread_mutex_t* mutex_0,pthread_mutex_t* mutex_1);

void GenericSyncDeclarations_stopSync_0(pthread_mutex_t* mutex_2,pthread_mutex_t* mutex_3);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
