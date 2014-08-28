#ifndef PI_H
#define PI_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include <stdio.h>

#include <sys/time.h>

#include <math.h>



#ifdef __cplusplus
extern "C" {
#endif

#define PI_BLOCKSIZE (60000)
#define PI_BLOCKCOUNT (2000)
#define PI_THRESHOLD (PI_BLOCKSIZE * PI_BLOCKCOUNT)
int32_t pi_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
