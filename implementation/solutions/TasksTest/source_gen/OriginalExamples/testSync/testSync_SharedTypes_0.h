#ifndef TESTSYNC_SHAREDTYPES_0_H
#define TESTSYNC_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct testSync_SharedTypes_0_AB testSync_SharedTypes_0_AB_t;
struct testSync_SharedTypes_0_AB {
  GenericSharedDeclarations_SharedOf_int32_0_t* val;
  GenericSharedDeclarations_SharedOf_int32_0_t val2;
};

typedef struct testSync_SharedTypes_0_SharedOf_AB_0 testSync_SharedTypes_0_SharedOf_AB_0_t;
struct testSync_SharedTypes_0_SharedOf_AB_0 {
  pthread_mutex_t mutex;
  testSync_SharedTypes_0_AB_t value;
};

void testSync_SharedTypes_0_mutexDestroy_1(testSync_SharedTypes_0_SharedOf_AB_0_t* var);

void testSync_SharedTypes_0_mutexDestroy_0(testSync_SharedTypes_0_AB_t* var);

void testSync_SharedTypes_0_mutexInit_0(testSync_SharedTypes_0_AB_t* var);

void testSync_SharedTypes_0_mutexInit_1(testSync_SharedTypes_0_SharedOf_AB_0_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
