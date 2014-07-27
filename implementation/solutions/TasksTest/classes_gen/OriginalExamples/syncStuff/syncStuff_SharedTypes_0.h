#ifndef SYNCSTUFF_SHAREDTYPES_0_H
#define SYNCSTUFF_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

typedef struct syncStuff_SharedTypes_0_A4 syncStuff_SharedTypes_0_A4_t;
struct syncStuff_SharedTypes_0_A4 {
  GenericSharedDeclarations_SharedOf_int32_0_t s;
};

void syncStuff_SharedTypes_0_mutexDestroy_0(syncStuff_SharedTypes_0_A4_t* var);

void syncStuff_SharedTypes_0_mutexInit_0(syncStuff_SharedTypes_0_A4_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
