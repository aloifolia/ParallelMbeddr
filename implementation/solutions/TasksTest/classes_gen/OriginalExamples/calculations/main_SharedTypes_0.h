#ifndef MAIN_SHAREDTYPES_0_H
#define MAIN_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include "readerData_SharedTypes_0.h"



#ifdef __cplusplus
extern "C" {
#endif

typedef struct main_SharedTypes_0_Args_a0a0a1a3d0c main_SharedTypes_0_Args_a0a0a1a3d0c_t;
struct main_SharedTypes_0_Args_a0a0a1a3d0c {
  readerData_SharedTypes_0_SharedOf_Data_0_t inputData;
};

void main_SharedTypes_0_mutexInit_4(main_SharedTypes_0_Args_a0a0a1a3d0c_t* var);

void main_SharedTypes_0_mutexDestroy_4(main_SharedTypes_0_Args_a0a0a1a3d0c_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
