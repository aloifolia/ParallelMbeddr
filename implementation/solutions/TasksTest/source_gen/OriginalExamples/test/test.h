#ifndef TEST_H
#define TEST_H


#include <stdint.h>

#include <stddef.h>

#include "GenericDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

extern int32_t test_b;

int32_t test_main(int32_t argc,char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
