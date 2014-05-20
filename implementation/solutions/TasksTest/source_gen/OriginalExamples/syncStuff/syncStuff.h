#ifndef SYNCSTUFF_H
#define SYNCSTUFF_H


#include <stdint.h>

#include <stddef.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t syncStuff_main(int32_t argc,char* argv[]);

void syncStuff_initGlobalMutexes_0(void);

void syncStuff_destroyGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
