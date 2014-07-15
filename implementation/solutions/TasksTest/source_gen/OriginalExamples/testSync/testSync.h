#ifndef TESTSYNC_H
#define TESTSYNC_H


#include <stdint.h>

#include <stddef.h>

#include "testSync2.h"

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t testSync_main(int32_t argc,char* argv[]);

void testSync_initAllGlobalMutexes_0(void);

void testSync_destroyAllGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
