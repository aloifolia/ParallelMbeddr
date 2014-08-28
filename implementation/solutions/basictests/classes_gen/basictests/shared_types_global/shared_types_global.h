#ifndef SHARED_TYPES_GLOBAL_H
#define SHARED_TYPES_GLOBAL_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include "shared_types_global_SharedTypes_0.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t shared_types_global_main(int32_t argc, char* argv[]);

void shared_types_global_initGlobalMutexesFor1Module_0(void);

void shared_types_global_initAllGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
