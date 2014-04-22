#ifndef FIBONACCI_H
#define FIBONACCI_H


#include <stdint.h>

#include <stddef.h>

#include "GenericDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

int32_t fibonacci_main(int32_t argc,char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
