#ifndef GENERICDECLARATIONS_H
#define GENERICDECLARATIONS_H


#include <stdint.h>

#include <stddef.h>



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


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
