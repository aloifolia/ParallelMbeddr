#include "philosophers.h"


#include <stdio.h>
#include <stdlib.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "philosophers_SharedTypes_0.h"
#include <stdlib.h>

typedef int32_t philosophers_Fork;
typedef struct philosophers_Args_a0a3a1a9 philosophers_Args_a0a3a1a9_t;
struct philosophers_Args_a0a3a1a9 {
  philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* philosopher;
};

static void philosophers_initPhilosophers(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t philosophers[PHILOSOPHERS_philosopherCount], GenericSharedDeclarations_SharedOf_int32_0_t forks[PHILOSOPHERS_philosopherCount]);

static void philosophers_letThemEat(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t philosophers[PHILOSOPHERS_philosopherCount]);

static void philosophers_eat(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* philosopher);

static void philosophers_wait(int32_t durationInNs);

static void* philosophers_parFun_a0a3a1a9(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t philosophers_futureInit_a0d0b0j(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* philosopher);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  philosophers_SharedTypes_0_SharedOf_Philosopher_0_t philosophers[PHILOSOPHERS_philosopherCount];
  philosophers_SharedTypes_0_mutexInit_0(((philosophers_SharedTypes_0_SharedOf_Philosopher_0_t*)(philosophers)), 2);
  GenericSharedDeclarations_SharedOf_int32_0_t forks[PHILOSOPHERS_philosopherCount];
  GenericSharedDeclarations_mutexInit_1(((GenericSharedDeclarations_SharedOf_int32_0_t*)(forks)), 2);
  
  philosophers_initPhilosophers(philosophers, forks);
  philosophers_letThemEat(philosophers);
  for ( int8_t __i = 1; __i < 2; __i++ )
  {
    __i = 5;
  }
  
  return 0;
}

static void philosophers_initPhilosophers(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t philosophers[PHILOSOPHERS_philosopherCount], GenericSharedDeclarations_SharedOf_int32_0_t forks[PHILOSOPHERS_philosopherCount]) 
{
  for ( int8_t __i = 0; __i < PHILOSOPHERS_philosopherCount; __i++ )
  {
    {
      philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* philosopher = &philosophers[__i];
      {
        philosopher->value.id = __i;
        philosopher->value.leftFork = &forks[__i];
        philosopher->value.rightFork = &forks[(__i + 1) % PHILOSOPHERS_philosopherCount];
      }
    }
  }
}

static void philosophers_letThemEat(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t philosophers[PHILOSOPHERS_philosopherCount]) 
{
  GenericTaskDeclarations_VoidFuture_t eatingPhilosophers[PHILOSOPHERS_philosopherCount];
  for ( int8_t __i = 0; __i < PHILOSOPHERS_philosopherCount; __i++ )
  {
    /* 
     * every task gets its own philosopher, alternative approach: every task gets all philosophers and an index
     */

    philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* philosopher = &philosophers[__i];
    printf("let %d eat...\n", __i);
    eatingPhilosophers[__i] = philosophers_futureInit_a0d0b0j(philosopher);
  }
  for ( int8_t __i = 0; __i < PHILOSOPHERS_philosopherCount; __i++ )
  {
    GenericTaskDeclarations_joinVoidFuture(&eatingPhilosophers[__i]);
  }
  
}

static void philosophers_eat(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* philosopher) 
{
  for ( int8_t __i = 0; __i < PHILOSOPHERS_mealCount; __i++ )
  {
    {
      {
        GenericSharedDeclarations_SharedOf_int32_0_t* leftFork = philosopher->value.leftFork;
        GenericSharedDeclarations_SharedOf_int32_0_t* rightFork = philosopher->value.rightFork;
        {
          printf("(%d) starts eating\n", philosopher->value.id);
          /* 
           * TODO: make set work for typedefs!
           */

          philosophers_wait(PHILOSOPHERS_eatingDurationInNs);
          printf("(%d) stops eating\n", philosopher->value.id);
        }
      }
    }
    /* 
     * think...
     */

    philosophers_wait((rand() % (PHILOSOPHERS_thinkingDurationMaxInNs - PHILOSOPHERS_thinkingDurationMinInNs)) + PHILOSOPHERS_thinkingDurationMinInNs);
  }
}

static void philosophers_wait(int32_t durationInNs) 
{
  struct timespec eatingDuration = (struct timespec) { .tv_nsec =durationInNs};
  nanosleep(&eatingDuration,0);
}

static void* philosophers_parFun_a0a3a1a9(void* voidArgs) 
{
  philosophers_Args_a0a3a1a9_t* args = ((philosophers_Args_a0a3a1a9_t*)(voidArgs));
  philosophers_eat((args)->philosopher);
  free(voidArgs);
  return 0;
}

static GenericTaskDeclarations_VoidFuture_t philosophers_futureInit_a0d0b0j(philosophers_SharedTypes_0_SharedOf_Philosopher_0_t* philosopher) 
{
  philosophers_Args_a0a3a1a9_t* args_a0d0b0j = malloc(sizeof(philosophers_Args_a0a3a1a9_t));
  args_a0d0b0j->philosopher = philosopher;
  pthread_t pth;
  pthread_create(&pth,0,&philosophers_parFun_a0a3a1a9,args_a0d0b0j);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

