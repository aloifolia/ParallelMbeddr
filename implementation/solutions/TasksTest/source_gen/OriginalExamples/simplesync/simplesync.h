#ifndef SIMPLESYNC_H
#define SIMPLESYNC_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

void simplesync_bar(GenericSharedDeclarations_SharedOf_int32_0_t* valuePointer);

int32_t simplesync_main(int32_t argc, char* argv[]);

void simplesync_initGlobalMutexesFor1Module_0(void);

void simplesync_initAllGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
