#include "otherStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

struct otherStuff_Args_a1a0 {
  int8_t b;
};

static void* otherStuff_parFun_a1a0(void* voidArgs);

static inline struct GenericTaskDeclarations_Task otherStuff_taskInit_a1a0(int8_t b);

int32_t main(int32_t argc, char* argv[]) 
{
  int8_t b = 1;
  struct GenericTaskDeclarations_Task t = otherStuff_taskInit_a1a0(b);
  
  return 0;
}


static void* otherStuff_parFun_a1a0(void* voidArgs) 
{
  int8_t* result = malloc(sizeof(int8_t));
  struct otherStuff_Args_a1a0* args = ((struct otherStuff_Args_a1a0*)(voidArgs));
  *result = (args)->b;
  return result;
}


static inline struct GenericTaskDeclarations_Task otherStuff_taskInit_a1a0(int8_t b) 
{
  struct otherStuff_Args_a1a0* args_a1a0 = malloc(sizeof(struct otherStuff_Args_a1a0));
  args_a1a0->b = b;
  struct GenericTaskDeclarations_Task task = {args_a1a0,&otherStuff_parFun_a1a0};
  return task;
}


