#ifndef FIBONACCI_H
#define FIBONACCI_H


#include <stdint.h>

#include <stddef.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

int32_t fibonacci_main(int32_t argc,char* argv[]);

void fibonacci_initGlobalMutexes_0(void);

void fibonacci_destroyGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
