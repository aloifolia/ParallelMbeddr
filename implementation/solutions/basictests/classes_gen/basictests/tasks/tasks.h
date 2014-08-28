#ifndef TASKS_H
#define TASKS_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t tasks_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
