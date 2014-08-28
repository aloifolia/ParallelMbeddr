#ifndef PI_H
#define PI_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "queue.h"

#include <float.h>

#include <stdio.h>

#include <sys/time.h>

#include <math.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include "pi_SharedTypes_0.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

#define PI_BLOCKSIZE (1000)
#define PI_BLOCKCOUNT (200)
#define PI_THRESHOLD (PI_BLOCKSIZE * PI_BLOCKCOUNT)
#define PI_PI (3.1415926535897932384626)
#define PI_MAPPERCOUNT (20)
#define PI_DELAY (50)
int32_t pi_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
