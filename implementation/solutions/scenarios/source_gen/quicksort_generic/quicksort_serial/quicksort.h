#ifndef QUICKSORT_H
#define QUICKSORT_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include <stdio.h>

#include <stdlib.h>



#ifdef __cplusplus
extern "C" {
#endif

#define QUICKSORT_numberOfGenerics (200)
#define QUICKSORT_sleepingTimeInNs (100)
int32_t quicksort_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
