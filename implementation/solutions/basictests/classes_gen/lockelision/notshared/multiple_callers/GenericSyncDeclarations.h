#ifndef GENERICSYNCDECLARATIONS_H
#define GENERICSYNCDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include <time.h>

#include <stdint.h>

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

void GenericSyncDeclarations_startSyncFor4Mutexes(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1, pthread_mutex_t* mutex_2, pthread_mutex_t* mutex_3);

void GenericSyncDeclarations_startSyncFor3Mutexes(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1, pthread_mutex_t* mutex_2);

void GenericSyncDeclarations_stopSyncFor4Mutexes(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1, pthread_mutex_t* mutex_2, pthread_mutex_t* mutex_3);

void GenericSyncDeclarations_stopSyncFor3Mutexes(pthread_mutex_t* mutex_4, pthread_mutex_t* mutex_5, pthread_mutex_t* mutex_6);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
