#ifndef READONLY_AND_RECURSIVE_LOCK_H
#define READONLY_AND_RECURSIVE_LOCK_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t readonly_and_recursive_lock_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
