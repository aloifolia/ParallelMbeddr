#ifndef QUICKSORT_H
#define QUICKSORT_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include <stdio.h>

#include <stdlib.h>

#include <sys/time.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include "quicksort_SharedTypes_0.h"

#include <pthread.h>



#ifdef __cplusplus
extern "C" {
#endif

#define QUICKSORT_numberOfItems (20000)
#define QUICKSORT_threshold (20)
int32_t quicksort_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
