#include "tasks.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

typedef struct tasks_Args_a1a1 tasks_Args_a1a1_t;
struct tasks_Args_a1a1 {
};

typedef struct tasks_Args_a7a1 tasks_Args_a7a1_t;
struct tasks_Args_a7a1 {
};

typedef struct tasks_Args_a22a1 tasks_Args_a22a1_t;
struct tasks_Args_a22a1 {
  bool x1;
};

typedef struct tasks_A tasks_A_t;
struct tasks_A {
  double val;
};

typedef struct tasks_Args_a61a1 tasks_Args_a61a1_t;
struct tasks_Args_a61a1 {
  bool x1;
  tasks_A_t x2;
};

static void tasks_foo1(void);

static void* tasks_parFun_a7a1(void* voidArgs);

static void* tasks_parFun_a22a1(void* voidArgs);

static void* tasks_parFun_a1a1(void* voidArgs);

static void* tasks_parFun_a61a1(void* voidArgs);

static void tasks_foo2(bool b, tasks_A_t a);

static inline GenericTaskDeclarations_Task_t tasks_taskInit_a61a1(bool x1, tasks_A_t x2);

static inline GenericTaskDeclarations_Task_t tasks_taskInit_a22a1(bool x1);

int32_t main(int32_t argc, char* argv[]) 
{
  /* 
   * () -> void
   */

  GenericTaskDeclarations_Task_t t1 = (GenericTaskDeclarations_Task_t){0,&tasks_parFun_a1a1,0};
  GenericTaskDeclarations_VoidFuture_t f1 = GenericTaskDeclarations_runTaskAndGetVoidFuture(t1);
  free(t1.args);
  GenericTaskDeclarations_joinVoidFuture(&f1);
  
  /* 
   * () -> int32*
   */

  GenericTaskDeclarations_Task_t t2 = (GenericTaskDeclarations_Task_t){0,&tasks_parFun_a7a1,0};
  GenericTaskDeclarations_Future_t f2 = GenericTaskDeclarations_runTaskAndGetFuture(t2);
  free(t2.args);
  int32_t* r2 = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&f2)));
  
  bool x1;
  tasks_A_t x2;
  
  /* 
   * (boolean, A) -> void
   */

  GenericTaskDeclarations_Task_t t3 = tasks_taskInit_a61a1(x1, x2);
  GenericTaskDeclarations_VoidFuture_t f3 = GenericTaskDeclarations_runTaskAndGetVoidFuture(t3);
  free(t3.args);
  GenericTaskDeclarations_joinVoidFuture(&f3);
  
  /* 
   * (boolean) -> boolean*
   */

  GenericTaskDeclarations_Task_t t4 = tasks_taskInit_a22a1(x1);
  GenericTaskDeclarations_Future_t f4 = GenericTaskDeclarations_runTaskAndGetFuture(t4);
  free(t4.args);
  bool* r4 = ((bool*)(GenericTaskDeclarations_getFutureResult(&f4)));
  
  return 0;
}

static void tasks_foo1(void) 
{
  
}

static void* tasks_parFun_a7a1(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  *result = ((int32_t)(1));
  return result;
}

static void* tasks_parFun_a22a1(void* voidArgs) 
{
  bool* result = malloc(sizeof(bool));
  tasks_Args_a22a1_t* args = ((tasks_Args_a22a1_t*)(voidArgs));
  *result = ((bool)((args)->x1));
  free(voidArgs);
  return result;
}

static void* tasks_parFun_a1a1(void* voidArgs) 
{
  tasks_foo1();
  return 0;
}

static void* tasks_parFun_a61a1(void* voidArgs) 
{
  tasks_Args_a61a1_t* args = ((tasks_Args_a61a1_t*)(voidArgs));
  tasks_foo2((args)->x1, (args)->x2);
  free(voidArgs);
  return 0;
}

static void tasks_foo2(bool b, tasks_A_t a) 
{
  
}

static inline GenericTaskDeclarations_Task_t tasks_taskInit_a61a1(bool x1, tasks_A_t x2) 
{
  tasks_Args_a61a1_t* args_a61a1 = malloc(sizeof(tasks_Args_a61a1_t));
  args_a61a1->x1 = x1;
  args_a61a1->x2 = x2;
  return (GenericTaskDeclarations_Task_t){args_a61a1,&tasks_parFun_a61a1,sizeof(tasks_Args_a61a1_t)};
}

static inline GenericTaskDeclarations_Task_t tasks_taskInit_a22a1(bool x1) 
{
  tasks_Args_a22a1_t* args_a22a1 = malloc(sizeof(tasks_Args_a22a1_t));
  args_a22a1->x1 = x1;
  return (GenericTaskDeclarations_Task_t){args_a22a1,&tasks_parFun_a22a1,sizeof(tasks_Args_a22a1_t)};
}

