#ifndef SECOND_H
#define SECOND_H


#include <stdint.h>

#include <stddef.h>

#include <stdbool.h>

#include "GenericTaskDeclarations.h"

#include "GenericSharedDeclarations.h"

#include "GenericSyncDeclarations.h"



#ifdef __cplusplus
extern "C" {
#endif

typedef struct second_X second_X_t;
struct second_X {
  int32_t x;
};

typedef second_X_t second_xs;
typedef second_xs second_ys;

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
