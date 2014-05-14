#ifndef TESTSYNC_H
#define TESTSYNC_H


#include <stdint.h>

#include <stddef.h>

#include "testSync2.h"

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t testSync_main(int32_t argc,char* argv[]);

void testSync_initGlobalMutexes_0(void);

void testSync_destroyGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
