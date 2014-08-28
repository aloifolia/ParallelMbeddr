#ifndef PI_H
#define PI_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include <sys/time.h>

#include <stdio.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

#define PI_BLOCKSIZE (60000000)
#define PI_BLOCKCOUNT (2)
#define PI_THRESHOLD (PI_BLOCKSIZE * PI_BLOCKCOUNT)
#define PI_PI (3.1415926535897932384626)
int32_t pi_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
