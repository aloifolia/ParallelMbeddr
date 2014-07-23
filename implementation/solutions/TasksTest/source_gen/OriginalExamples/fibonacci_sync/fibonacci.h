#ifndef FIBONACCI_H
#define FIBONACCI_H


#include <stdint.h>

#include <stddef.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

#define FIBONACCI_fiboCount (40)
int32_t fibonacci_main(int32_t argc,char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
