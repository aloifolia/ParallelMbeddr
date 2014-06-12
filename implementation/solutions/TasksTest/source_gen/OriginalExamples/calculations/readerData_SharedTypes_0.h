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
  struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0 blocks[CONSTANTS_numberOfBlocks];
  int16_t numberOfBlocks;
  int16_t lastBlockSize;
  int16_t nextBlockIndex;
};

struct readerData_SharedTypes_0_SharedOf_Data_0 {
  pthread_mutexattr_t mutexAttribute;
  pthread_mutex_t mutex;
  struct readerData_SharedTypes_0_Data value;
};


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
