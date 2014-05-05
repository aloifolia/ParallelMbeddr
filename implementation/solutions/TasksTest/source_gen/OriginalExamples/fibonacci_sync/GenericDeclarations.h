#ifndef GENERICDECLARATIONS_H
#define GENERICDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct GenericDeclarations_Task {
  void* args;
  void* (*fun)(void*);
};

struct GenericDeclarations_Future {
  pthread_t pth;
  void* result;
  int8_t finished;
};

static  struct GenericDeclarations_Future GenericDeclarations_runTaskAndGetFuture(struct GenericDeclarations_Task task) 
{
  pthread_t pth;
  pthread_create(&pth,0,task.fun,task.args);
  return (Future){ .pth = pth };
}



#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
