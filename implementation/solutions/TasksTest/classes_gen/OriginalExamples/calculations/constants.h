#ifndef CONSTANTS_H
#define CONSTANTS_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

#define CONSTANTS_numberOfBlocks (100)
#define CONSTANTS_blockSize (500)
#define CONSTANTS_numberOfWorkers (2)

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
