#ifndef GENERICTASKDECLARATIONS_H
#define GENERICTASKDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct GenericTaskDeclarations_Task {
  void* args;
  void* (*fun)(void*);
};

struct GenericTaskDeclarations_Future {
  pthread_t pth;
  int8_t finished;
  void* result;
};

struct GenericTaskDeclarations_VoidFuture {
  pthread_t pth;
  int8_t finished;
};

void GenericTaskDeclarations_joinFuture(struct GenericTaskDeclarations_Future* future);

void GenericTaskDeclarations_joinVoidFuture(struct GenericTaskDeclarations_VoidFuture* future);

void* GenericTaskDeclarations_getFutureResult(struct GenericTaskDeclarations_Future* future);

struct GenericTaskDeclarations_VoidFuture GenericTaskDeclarations_runTaskAndGetVoidFuture(struct GenericTaskDeclarations_Task task);

void GenericTaskDeclarations_saveAndJoinFuture(struct GenericTaskDeclarations_Future future);

void GenericTaskDeclarations_saveAndJoinVoidFuture(struct GenericTaskDeclarations_VoidFuture future);

struct GenericTaskDeclarations_Future GenericTaskDeclarations_runTaskAndGetFuture(struct GenericTaskDeclarations_Task task);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
