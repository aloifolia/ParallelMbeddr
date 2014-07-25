#ifndef GENERICTASKDECLARATIONS_H
#define GENERICTASKDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct GenericTaskDeclarations_Future GenericTaskDeclarations_Future_t;
struct GenericTaskDeclarations_Future {
  pthread_t pth;
  bool finished;
  void* result;
};

typedef struct GenericTaskDeclarations_VoidFuture GenericTaskDeclarations_VoidFuture_t;
struct GenericTaskDeclarations_VoidFuture {
  pthread_t pth;
  bool finished;
};

typedef struct GenericTaskDeclarations_Task GenericTaskDeclarations_Task_t;
struct GenericTaskDeclarations_Task {
  void* args;
  void* (*fun)(void*);
  size_t argsSize;
};

void* GenericTaskDeclarations_saveFutureAndGetResult(GenericTaskDeclarations_Future_t future);

void GenericTaskDeclarations_saveAndJoinVoidFuture(GenericTaskDeclarations_VoidFuture_t future);

GenericTaskDeclarations_Future_t GenericTaskDeclarations_runTaskAndGetFuture(GenericTaskDeclarations_Task_t task);

GenericTaskDeclarations_VoidFuture_t GenericTaskDeclarations_runTaskAndGetVoidFuture(GenericTaskDeclarations_Task_t task);

void* GenericTaskDeclarations_getFutureResult(GenericTaskDeclarations_Future_t* future);

void GenericTaskDeclarations_joinVoidFuture(GenericTaskDeclarations_VoidFuture_t* future);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
