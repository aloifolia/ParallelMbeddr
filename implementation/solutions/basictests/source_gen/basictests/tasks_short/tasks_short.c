#include "tasks_short.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

typedef struct tasks_short_Args_a0b0b tasks_short_Args_a0b0b_t;
struct tasks_short_Args_a0b0b {
};

typedef struct tasks_short_Args_a0f0b tasks_short_Args_a0f0b_t;
struct tasks_short_Args_a0f0b {
};

typedef struct tasks_short_Args_a0q0b tasks_short_Args_a0q0b_t;
struct tasks_short_Args_a0q0b {
  bool x1;
};

typedef struct tasks_short_A tasks_short_A_t;
struct tasks_short_A {
  double val;
};

typedef struct tasks_short_Args_a0m0b tasks_short_Args_a0m0b_t;
struct tasks_short_Args_a0m0b {
  bool x1;
  tasks_short_A_t x2;
};

static void tasks_short_foo1(void);

static void* tasks_short_parFun_a0f0b(void* voidArgs);

static void* tasks_short_parFun_a0q0b(void* voidArgs);

static void* tasks_short_parFun_a0b0b(void* voidArgs);

static void* tasks_short_parFun_a0m0b(void* voidArgs);

static void tasks_short_foo2(bool b, tasks_short_A_t a);

static GenericTaskDeclarations_VoidFuture_t tasks_short_futureInit_a1a1(void);

static GenericTaskDeclarations_Future_t tasks_short_futureInit_a5a1(void);

static GenericTaskDeclarations_VoidFuture_t tasks_short_futureInit_a21a1(bool x1, tasks_short_A_t x2);

static GenericTaskDeclarations_Future_t tasks_short_futureInit_a61a1(bool x1);

int32_t main(int32_t argc, char* argv[]) 
{
  /* 
   * () -> void
   */

  GenericTaskDeclarations_VoidFuture_t f1 = tasks_short_futureInit_a1a1();
  GenericTaskDeclarations_joinVoidFuture(&f1);
  
  /* 
   * () -> int32*
   */

  GenericTaskDeclarations_Future_t f2 = tasks_short_futureInit_a5a1();
  int32_t* r2 = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&f2)));
  
  bool x1;
  tasks_short_A_t x2;
  
  /* 
   * (boolean, A) -> void
   */

  GenericTaskDeclarations_VoidFuture_t f3 = tasks_short_futureInit_a21a1(x1, x2);
  GenericTaskDeclarations_joinVoidFuture(&f3);
  
  /* 
   * (boolean) -> boolean*
   */

  GenericTaskDeclarations_Future_t f4 = tasks_short_futureInit_a61a1(x1);
  bool* r4 = ((bool*)(GenericTaskDeclarations_getFutureResult(&f4)));
  
  return 0;
}

static void tasks_short_foo1(void) 
{
  
}

static void* tasks_short_parFun_a0f0b(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  *result = ((int32_t)(1));
  return result;
}

static void* tasks_short_parFun_a0q0b(void* voidArgs) 
{
  bool* result = malloc(sizeof(bool));
  tasks_short_Args_a0q0b_t* args = ((tasks_short_Args_a0q0b_t*)(voidArgs));
  *result = ((bool)((args)->x1));
  free(voidArgs);
  return result;
}

static void* tasks_short_parFun_a0b0b(void* voidArgs) 
{
  tasks_short_foo1();
  return 0;
}

static void* tasks_short_parFun_a0m0b(void* voidArgs) 
{
  tasks_short_Args_a0m0b_t* args = ((tasks_short_Args_a0m0b_t*)(voidArgs));
  tasks_short_foo2((args)->x1, (args)->x2);
  free(voidArgs);
  return 0;
}

static void tasks_short_foo2(bool b, tasks_short_A_t a) 
{
  
}

static GenericTaskDeclarations_VoidFuture_t tasks_short_futureInit_a1a1(void) 
{
  pthread_t pth;
  pthread_create(&pth,0,&tasks_short_parFun_a0b0b,0);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_Future_t tasks_short_futureInit_a5a1(void) 
{
  pthread_t pth;
  pthread_create(&pth,0,&tasks_short_parFun_a0f0b,0);
  return (GenericTaskDeclarations_Future_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t tasks_short_futureInit_a21a1(bool x1, tasks_short_A_t x2) 
{
  tasks_short_Args_a0m0b_t* args_a21a1 = malloc(sizeof(tasks_short_Args_a0m0b_t));
  args_a21a1->x1 = x1;
  args_a21a1->x2 = x2;
  pthread_t pth;
  pthread_create(&pth,0,&tasks_short_parFun_a0m0b,args_a21a1);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_Future_t tasks_short_futureInit_a61a1(bool x1) 
{
  tasks_short_Args_a0q0b_t* args_a61a1 = malloc(sizeof(tasks_short_Args_a0q0b_t));
  args_a61a1->x1 = x1;
  pthread_t pth;
  pthread_create(&pth,0,&tasks_short_parFun_a0q0b,args_a61a1);
  return (GenericTaskDeclarations_Future_t){ .pth =pth};
}

