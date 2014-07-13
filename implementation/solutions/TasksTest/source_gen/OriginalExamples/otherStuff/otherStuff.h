#ifndef OTHERSTUFF_H
#define OTHERSTUFF_H


#include <stdint.h>

#include <stddef.h>

#include "second.h"

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include "otherStuff_SharedTypes_0.h"



#ifdef __cplusplus
extern "C" {
#endif

int32_t otherStuff_main(int32_t argc,char* argv[]);

void otherStuff_initAllGlobalMutexes_0(void);

void otherStuff_destroyAllGlobalMutexes_0(void);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
