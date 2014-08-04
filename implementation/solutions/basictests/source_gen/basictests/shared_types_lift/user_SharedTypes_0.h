#ifndef USER_SHAREDTYPES_0_H
#define USER_SHAREDTYPES_0_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericSharedDeclarations.h"

#include "provider1_SharedTypes_0.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

typedef struct user_SharedTypes_0_B2 user_SharedTypes_0_B2_t;
struct user_SharedTypes_0_B2 {
  provider1_SharedTypes_0_A_t a;
  GenericSharedDeclarations_SharedOf_double_0_t s;
};

typedef struct user_SharedTypes_0_B1 user_SharedTypes_0_B1_t;
struct user_SharedTypes_0_B1 {
  user_SharedTypes_0_B2_t val;
};

typedef struct user_SharedTypes_0_SharedOf_B1_0 user_SharedTypes_0_SharedOf_B1_0_t;
struct user_SharedTypes_0_SharedOf_B1_0 {
  pthread_mutex_t mutex;
  user_SharedTypes_0_B1_t value;
};

void user_SharedTypes_0_mutexInit_3(user_SharedTypes_0_SharedOf_B1_0_t* var);

void user_SharedTypes_0_mutexDestroy_2(user_SharedTypes_0_B1_t* var);

void user_SharedTypes_0_mutexDestroy_1(user_SharedTypes_0_B2_t* var);

void user_SharedTypes_0_mutexInit_2(user_SharedTypes_0_B1_t* var);

void user_SharedTypes_0_mutexInit_1(user_SharedTypes_0_B2_t* var);

void user_SharedTypes_0_mutexDestroy_3(user_SharedTypes_0_SharedOf_B1_0_t* var);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
