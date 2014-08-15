#ifndef READERDATA_SHAREDTYPES_0_H
#define READERDATA_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct readerData_SharedTypes_0_Data readerData_SharedTypes_0_Data_t;
struct readerData_SharedTypes_0_Data {
  GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t blocks[100];
  int16_t numberOfBlocks;
  int16_t lastBlockSize;
  int16_t nextBlockIndex;
};

typedef struct readerData_SharedTypes_0_SharedOf_Data_0 readerData_SharedTypes_0_SharedOf_Data_0_t;
struct readerData_SharedTypes_0_SharedOf_Data_0 {
  pthread_mutex_t mutex;
  readerData_SharedTypes_0_Data_t value;
};

void readerData_SharedTypes_0_mutexDestroy_2(readerData_SharedTypes_0_Data_t* var);

void readerData_SharedTypes_0_mutexDestroy_3(readerData_SharedTypes_0_SharedOf_Data_0_t* var);

void readerData_SharedTypes_0_mutexInit_2(readerData_SharedTypes_0_Data_t* var);

void readerData_SharedTypes_0_mutexInit_3(readerData_SharedTypes_0_SharedOf_Data_0_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
