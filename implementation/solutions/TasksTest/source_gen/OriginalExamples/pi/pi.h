#ifndef PI_H
#define PI_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>



#ifdef __cplusplus
extern "C" {
#endif

#define PI_BLOCKSIZE (100000000)
#define PI_BLOCKCOUNT (6)
#define PI_THRESHOLD (PI_BLOCKSIZE * PI_BLOCKCOUNT)
int32_t pi_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
