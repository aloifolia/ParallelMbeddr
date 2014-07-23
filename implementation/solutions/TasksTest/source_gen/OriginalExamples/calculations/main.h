#ifndef MAIN_H
#define MAIN_H


#include <stdint.h>

#include <stddef.h>

#include "readerData.h"

#include "constants.h"

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include "main_SharedTypes_0.h"

#include <pthread.h>

#include <stdio.h>



#ifdef __cplusplus
extern "C" {
#endif

int32_t main_main(int32_t argc,char* argv[]);

void main_initGlobalMutexesFor1Module_0(void);

void main_initAllGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
