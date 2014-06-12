#ifndef CALCULATIONS_H
#define CALCULATIONS_H


#include <stdint.h>

#include <stddef.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

#define CALCULATIONS_threshold (40)
int32_t calculations_main(int32_t argc,char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
