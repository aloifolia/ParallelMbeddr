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

void GenericSyncDeclarations_startSyncFor2Mutexes(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1);

void GenericSyncDeclarations_stopSyncFor2Mutexes(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
