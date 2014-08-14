#ifndef RECURSIVE_READONLY_LOCK_H
#define RECURSIVE_READONLY_LOCK_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t recursive_readonly_lock_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
