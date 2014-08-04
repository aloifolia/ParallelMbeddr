#include "tasks_shorter.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

typedef struct tasks_shorter_Args_a0a1a1 tasks_shorter_Args_a0a1a1_t;
struct tasks_shorter_Args_a0a1a1 {
};

typedef struct tasks_shorter_Args_a0a4a1 tasks_shorter_Args_a0a4a1_t;
struct tasks_shorter_Args_a0a4a1 {
};

typedef struct tasks_shorter_Args_a0a31a1 tasks_shorter_Args_a0a31a1_t;
struct tasks_shorter_Args_a0a31a1 {
  bool x1;
};

typedef struct tasks_shorter_A tasks_shorter_A_t;
struct tasks_shorter_A {
  double val;
};

typedef struct tasks_shorter_Args_a0a01a1 tasks_shorter_Args_a0a01a1_t;
struct tasks_shorter_Args_a0a01a1 {
  bool x1;
  tasks_shorter_A_t x2;
};

static void tasks_shorter_foo1(void);

static void* tasks_shorter_parFun_a0a4a1(void* voidArgs);

static void* tasks_shorter_parFun_a0a31a1(void* voidArgs);

static void* tasks_shorter_parFun_a0a1a1(void* voidArgs);

static void* tasks_shorter_parFun_a0a01a1(void* voidArgs);

static void tasks_shorter_foo2(bool b, tasks_shorter_A_t a);

static GenericTaskDeclarations_VoidFuture_t tasks_shorter_futureInit_a0b0b(void);

static GenericTaskDeclarations_Future_t tasks_shorter_futureInit_a0e0b(void);

static GenericTaskDeclarations_VoidFuture_t tasks_shorter_futureInit_a0k0b(tasks_shorter_A_t x2, bool x1);

static GenericTaskDeclarations_Future_t tasks_shorter_futureInit_a0n0b(bool x1);

int32_t main(int32_t argc, char* argv[]) 
{
  /* 
   * () -> void
   */

  GenericTaskDeclarations_saveAndJoinVoidFuture(tasks_shorter_futureInit_a0b0b());
  
  /* 
   * () -> int32*
   */

  int32_t* r2 = ((int32_t*)(GenericTaskDeclarations_saveFutureAndGetResult(tasks_shorter_futureInit_a0e0b())));
  
  bool x1;
  tasks_shorter_A_t x2;
  
  /* 
   * (boolean, A) -> void
   */

  GenericTaskDeclarations_saveAndJoinVoidFuture(tasks_shorter_futureInit_a0k0b(x2, x1));
  
  /* 
   * (boolean) -> boolean*
   */

  bool* r4 = ((bool*)(GenericTaskDeclarations_saveFutureAndGetResult(tasks_shorter_futureInit_a0n0b(x1))));
  
  return 0;
}

static void tasks_shorter_foo1(void) 
{
  
}

static void* tasks_shorter_parFun_a0a4a1(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  *result = ((int32_t)(1));
  return result;
}

static void* tasks_shorter_parFun_a0a31a1(void* voidArgs) 
{
  bool* result = malloc(sizeof(bool));
  tasks_shorter_Args_a0a31a1_t* args = ((tasks_shorter_Args_a0a31a1_t*)(voidArgs));
  *result = ((bool)((args)->x1));
  free(voidArgs);
  return result;
}

static void* tasks_shorter_parFun_a0a1a1(void* voidArgs) 
{
  tasks_shorter_foo1();
  return 0;
}

static void* tasks_shorter_parFun_a0a01a1(void* voidArgs) 
{
  tasks_shorter_Args_a0a01a1_t* args = ((tasks_shorter_Args_a0a01a1_t*)(voidArgs));
  tasks_shorter_foo2((args)->x1, (args)->x2);
  free(voidArgs);
  return 0;
}

static void tasks_shorter_foo2(bool b, tasks_shorter_A_t a) 
{
  
}

static GenericTaskDeclarations_VoidFuture_t tasks_shorter_futureInit_a0b0b(void) 
{
  pthread_t pth;
  pthread_create(&pth,0,&tasks_shorter_parFun_a0a1a1,0);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_Future_t tasks_shorter_futureInit_a0e0b(void) 
{
  pthread_t pth;
  pthread_create(&pth,0,&tasks_shorter_parFun_a0a4a1,0);
  return (GenericTaskDeclarations_Future_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t tasks_shorter_futureInit_a0k0b(tasks_shorter_A_t x2, bool x1) 
{
  tasks_shorter_Args_a0a01a1_t* args_a0k0b = malloc(sizeof(tasks_shorter_Args_a0a01a1_t));
  args_a0k0b->x1 = x1;
  args_a0k0b->x2 = x2;
  pthread_t pth;
  pthread_create(&pth,0,&tasks_shorter_parFun_a0a01a1,args_a0k0b);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_Future_t tasks_shorter_futureInit_a0n0b(bool x1) 
{
  tasks_shorter_Args_a0a31a1_t* args_a0n0b = malloc(sizeof(tasks_shorter_Args_a0a31a1_t));
  args_a0n0b->x1 = x1;
  pthread_t pth;
  pthread_create(&pth,0,&tasks_shorter_parFun_a0a31a1,args_a0n0b);
  return (GenericTaskDeclarations_Future_t){ .pth =pth};
}

