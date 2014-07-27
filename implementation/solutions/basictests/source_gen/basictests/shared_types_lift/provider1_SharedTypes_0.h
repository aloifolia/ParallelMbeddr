#ifndef PROVIDER1_SHAREDTYPES_0_H
#define PROVIDER1_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

typedef struct provider1_SharedTypes_0_A provider1_SharedTypes_0_A_t;
struct provider1_SharedTypes_0_A {
  GenericSharedDeclarations_SharedOf_int32_0_t a;
};

void provider1_SharedTypes_0_mutexDestroy_0(provider1_SharedTypes_0_A_t* var);

void provider1_SharedTypes_0_mutexInit_0(provider1_SharedTypes_0_A_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
