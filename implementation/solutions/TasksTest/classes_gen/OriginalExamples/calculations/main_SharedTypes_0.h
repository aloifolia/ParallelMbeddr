#ifndef MAIN_SHAREDTYPES_0_H
#define MAIN_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSharedDeclarations.h"

#include "readerData_SharedTypes_0.h"



#ifdef __cplusplus
extern "C" {
#endif

struct main_SharedTypes_0_Args_a0a0a1a2a3a2 {
  struct readerData_SharedTypes_0_SharedOf_Data_0 inputData;
};

void main_SharedTypes_0_mutexInit_5(struct main_SharedTypes_0_Args_a0a0a1a2a3a2* var);

void main_SharedTypes_0_mutexDestroy_5(struct main_SharedTypes_0_Args_a0a0a1a2a3a2* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
