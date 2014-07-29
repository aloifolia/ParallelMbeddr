#ifndef PHILOSOPHERS_H
#define PHILOSOPHERS_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include <stdio.h>

#include <stdlib.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"

#include "philosophers_SharedTypes_0.h"

#include <pthread.h>

#include <time.h>



#ifdef __cplusplus
extern "C" {
#endif

#define PHILOSOPHERS_philosopherCount (2)
#define PHILOSOPHERS_eatingDurationInNs (500)
#define PHILOSOPHERS_thinkingDurationMinInNs (100)
#define PHILOSOPHERS_thinkingDurationMaxInNs (1000)
#define PHILOSOPHERS_mealCount (5)
int32_t philosophers_main(int32_t argc, char* argv[]);


#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
