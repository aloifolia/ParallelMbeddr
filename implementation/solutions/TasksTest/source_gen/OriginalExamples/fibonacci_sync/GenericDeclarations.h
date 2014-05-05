#ifndef GENERICDECLARATIONS_H
#define GENERICDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct GenericDeclarations_Future {
  pthread_t pth;
  void* result;
  int8_t finished;
};

struct GenericDeclarations_Task {
  void* args;
  void* (*fun)(void*);
};

void GenericDeclarations_joinFuture(struct GenericDeclarations_Future* future);

struct GenericDeclarations_Future GenericDeclarations_runTaskAndGetFuture(struct GenericDeclarations_Task task);

void* GenericDeclarations_getFutureResult(struct GenericDeclarations_Future* future);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
