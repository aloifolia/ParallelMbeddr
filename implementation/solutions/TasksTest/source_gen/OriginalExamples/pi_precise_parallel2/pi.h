#ifndef PI_H
#define PI_H


#include <stdint.h>

#include <stddef.h>

#include <stdio.h>
#include <gmp.h>

#include "queue.h"

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

#define PI_BLOCKSIZE (1000)
#define PI_BLOCKCOUNT1 (5)
#define PI_THRESHOLD1 (PI_BLOCKSIZE * PI_BLOCKCOUNT1)
#define PI_BLOCKCOUNT2 (200)
#define PI_THRESHOLD2 (PI_BLOCKSIZE * PI_BLOCKCOUNT2)
#define PI_PRECISION (512)
#define PI_BASE (10)
#define PI_PI160 ("3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502")
#define PI_MAPPERCOUNT (2)
int32_t pi_main(int32_t argc,char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
