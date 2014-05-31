#ifndef SYNCSTUFF_H
#define SYNCSTUFF_H


#include <stdint.h>

#include <stddef.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include "syncStuff_SharedTypes_0.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t syncStuff_main(int32_t argc,char* argv[]);

void syncStuff_initGlobalMutexesFor1Module_0(void);

void syncStuff_initAllGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
