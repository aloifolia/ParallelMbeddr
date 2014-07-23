#ifndef READERDATA_SHAREDTYPES_0_H
#define READERDATA_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

struct readerData_SharedTypes_0_Data {
  struct GenericSharedDeclarations_SharedOf_Block_0 blocks[100];
  int16_t numberOfBlocks;
  int16_t lastBlockSize;
  int16_t nextBlockIndex;
};

struct readerData_SharedTypes_0_SharedOf_Data_0 {
  pthread_mutex_t mutex;
  struct readerData_SharedTypes_0_Data value;
};

void readerData_SharedTypes_0_mutexDestroy_4(struct readerData_SharedTypes_0_SharedOf_Data_0* var);

void readerData_SharedTypes_0_mutexInit_1(struct readerData_SharedTypes_0_Data* var);

void readerData_SharedTypes_0_mutexInit_4(struct readerData_SharedTypes_0_SharedOf_Data_0* var);

void readerData_SharedTypes_0_mutexDestroy_1(struct readerData_SharedTypes_0_Data* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
