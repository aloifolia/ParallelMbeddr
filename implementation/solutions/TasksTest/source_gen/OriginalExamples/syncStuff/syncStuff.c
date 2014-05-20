#include "syncStuff.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include <stdlib.h>

static struct GenericSharedDeclarations_SharedInt32_0* syncStuff_global;

static struct GenericSharedDeclarations_SharedInt32_0 syncStuff_global2;

struct syncStuff_Args_a4a3 {
  int32_t* z;
};

struct syncStuff_Args_a5a3 {
  int32_t* y;
};

struct syncStuff_A {
  int32_t* val;
};

struct syncStuff_Y {
  struct GenericSharedDeclarations_SharedInt32_0 i;
};

struct syncStuff_Z {
  int32_t val;
};

struct syncStuff_Args_a9a3 {
  struct syncStuff_Z z2;
};

struct syncStuff_B {
  struct syncStuff_A ba;
};

struct syncStuff_Args_a01a3 {
  struct syncStuff_B b;
};

struct syncStuff_Args_a41a3 {
  struct syncStuff_Z z2;
};

struct syncStuff_Args_a7a3 {
  struct syncStuff_B b;
};

static void syncStuff_changeGlobalDirectly(void);

static void syncStuff_foo(int32_t x[45]);

static void* syncStuff_parFun_a4a3(void* voidArgs);

static void* syncStuff_parFun_a5a3(void* voidArgs);

static void* syncStuff_parFun_a7a3(void* voidArgs);

static void* syncStuff_parFun_a9a3(void* voidArgs);

static void* syncStuff_parFun_a01a3(void* voidArgs);

static void* syncStuff_parFun_a41a3(void* voidArgs);

static inline void syncStuff_init_y2_0(struct syncStuff_Y* y2);

static void syncStuff_bar(struct syncStuff_A a);

static inline void syncStuff_destroy_y2_0(struct syncStuff_Y* y2);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a4a3(void);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a5a3(int32_t* y);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a7a3(void);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a9a3(struct syncStuff_Z z2);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a01a3(struct syncStuff_B b);

static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a41a3(struct syncStuff_Z z2);

int32_t main(int32_t argc, char* argv[]) 
{
  syncStuff_initGlobalMutexes_0();
  
  syncStuff_destroyGlobalMutexes_0();
  return 0;
}


static void syncStuff_changeGlobalDirectly(void) 
{
  int32_t x;
  int32_t* y;
  int32_t z[45];
  int32_t x2[4][5];
  syncStuff_taskInit_a4a3();
  syncStuff_taskInit_a5a3(y);
  struct syncStuff_B b;
  syncStuff_taskInit_a7a3();
  struct syncStuff_Z z2;
  syncStuff_taskInit_a9a3(z2);
  syncStuff_taskInit_a01a3(b);
  struct syncStuff_Y y2;
  syncStuff_init_y2_0(&y2);
  (y2.i).value;
  syncStuff_taskInit_a41a3(z2);
  
  
  syncStuff_destroy_y2_0(&y2);
}


static void syncStuff_foo(int32_t x[45]) 
{
  x[4] = 3;
}


void syncStuff_initGlobalMutexes_0(void) 
{
  GenericSharedDeclarations_initMutex_0(&syncStuff_global2.mutexAttribute, &syncStuff_global2.mutex);
}


void syncStuff_destroyGlobalMutexes_0(void) 
{
  GenericSharedDeclarations_destroyMutex_0(&syncStuff_global2.mutex);
}


static void* syncStuff_parFun_a4a3(void* voidArgs) 
{
  struct syncStuff_Args_a4a3* args = ((struct syncStuff_Args_a4a3*)(voidArgs));
  ???[45]* result = malloc(sizeof(???[45]));
  *result = z;
  return result;
}


static void* syncStuff_parFun_a5a3(void* voidArgs) 
{
  struct syncStuff_Args_a5a3* args = ((struct syncStuff_Args_a5a3*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = *(*args).y;
  return result;
}


static void* syncStuff_parFun_a7a3(void* voidArgs) 
{
  struct syncStuff_Args_a7a3* args = ((struct syncStuff_Args_a7a3*)(voidArgs));
  struct syncStuff_B* result = malloc(sizeof(struct syncStuff_B));
  *result = b;
  return result;
}


static void* syncStuff_parFun_a9a3(void* voidArgs) 
{
  struct syncStuff_Args_a9a3* args = ((struct syncStuff_Args_a9a3*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = (&(*args).z2)->val;
  return result;
}


static void* syncStuff_parFun_a01a3(void* voidArgs) 
{
  struct syncStuff_Args_a01a3* args = ((struct syncStuff_Args_a01a3*)(voidArgs));
  int32_t* result = malloc(sizeof(int32_t));
  *result = *((*args).b.ba.val);
  return result;
}


static void* syncStuff_parFun_a41a3(void* voidArgs) 
{
  struct syncStuff_Args_a41a3* args = ((struct syncStuff_Args_a41a3*)(voidArgs));
  struct syncStuff_Z** result = malloc(sizeof(struct syncStuff_Z*));
  *result = &(*args).z2;
  return result;
}


static  void syncStuff_init_y2_0(struct syncStuff_Y* y2) 
{
  GenericSharedDeclarations_initMutex_0(&y2->i.mutexAttribute, &y2->i.mutex);
}


static void syncStuff_bar(struct syncStuff_A a) 
{
  
}


static  void syncStuff_destroy_y2_0(struct syncStuff_Y* y2) 
{
  GenericSharedDeclarations_destroyMutex_0(&y2->i.mutex);
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a4a3(void) 
{
  
  struct syncStuff_Args_a4a3* args_a4a3 = malloc(sizeof(struct syncStuff_Args_a4a3));
  struct GenericTaskDeclarations_Task task1 = {args_a4a3,&syncStuff_parFun_a4a3};
  return task1;
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a5a3(int32_t* y) 
{
  
  struct syncStuff_Args_a5a3* args_a5a3 = malloc(sizeof(struct syncStuff_Args_a5a3));
  args_a5a3->y = y;
  struct GenericTaskDeclarations_Task task1 = {args_a5a3,&syncStuff_parFun_a5a3};
  return task1;
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a7a3(void) 
{
  
  struct syncStuff_Args_a7a3* args_a7a3 = malloc(sizeof(struct syncStuff_Args_a7a3));
  struct GenericTaskDeclarations_Task task1 = {args_a7a3,&syncStuff_parFun_a7a3};
  return task1;
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a9a3(struct syncStuff_Z z2) 
{
  
  struct syncStuff_Args_a9a3* args_a9a3 = malloc(sizeof(struct syncStuff_Args_a9a3));
  args_a9a3->z2 = z2;
  struct GenericTaskDeclarations_Task task1 = {args_a9a3,&syncStuff_parFun_a9a3};
  return task1;
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a01a3(struct syncStuff_B b) 
{
  
  struct syncStuff_Args_a01a3* args_a01a3 = malloc(sizeof(struct syncStuff_Args_a01a3));
  args_a01a3->b = b;
  struct GenericTaskDeclarations_Task task1 = {args_a01a3,&syncStuff_parFun_a01a3};
  return task1;
}


static inline struct GenericTaskDeclarations_Task syncStuff_taskInit_a41a3(struct syncStuff_Z z2) 
{
  
  struct syncStuff_Args_a41a3* args_a41a3 = malloc(sizeof(struct syncStuff_Args_a41a3));
  args_a41a3->z2 = z2;
  struct GenericTaskDeclarations_Task task1 = {args_a41a3,&syncStuff_parFun_a41a3};
  return task1;
}


