#ifndef SHARED_TYPES_DESTROY_H
#define SHARED_TYPES_DESTROY_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t shared_types_destroy_main(int32_t argc, char* argv[]);

void shared_types_destroy_initGlobalMutexesFor1Module_0(void);

void shared_types_destroy_initAllGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
