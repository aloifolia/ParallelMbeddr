#ifndef SYNCS_MULTIPLE_RESOURCES_SHAREDTYPES_0_H
#define SYNCS_MULTIPLE_RESOURCES_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct syncs_multiple_resources_SharedTypes_0_A syncs_multiple_resources_SharedTypes_0_A_t;
struct syncs_multiple_resources_SharedTypes_0_A {
  GenericSharedDeclarations_SharedOf_double_0_t* field;
};

typedef struct syncs_multiple_resources_SharedTypes_0_SharedOf_A_0 syncs_multiple_resources_SharedTypes_0_SharedOf_A_0_t;
struct syncs_multiple_resources_SharedTypes_0_SharedOf_A_0 {
  pthread_mutex_t mutex;
  syncs_multiple_resources_SharedTypes_0_A_t value;
};


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
