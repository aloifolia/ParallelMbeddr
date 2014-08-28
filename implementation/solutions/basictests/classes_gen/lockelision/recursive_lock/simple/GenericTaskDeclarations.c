#include "GenericTaskDeclarations.h"


#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>
#include <string.h>

GenericTaskDeclarations_VoidFuture_t GenericTaskDeclarations_runTaskAndGetVoidFuture(GenericTaskDeclarations_Task_t task) 
{
  pthread_t pth;
  if ( task.argsSize == 0 ) 
  {
    pthread_create(&pth,0,task.fun,0);
  }  else 
  {
    void* args = malloc(task.argsSize);
    memcpy(args,task.args,task.argsSize);
    pthread_create(&pth,0,task.fun,args);
  }
  return (GenericTaskDeclarations_VoidFuture_t){ .pth = pth };
}

void GenericTaskDeclarations_saveAndJoinVoidFuture(GenericTaskDeclarations_VoidFuture_t future) 
{
  GenericTaskDeclarations_joinVoidFuture(&future);
}

void* GenericTaskDeclarations_saveFutureAndGetResult(GenericTaskDeclarations_Future_t future) 
{
  GenericTaskDeclarations_getFutureResult(&future);
}

GenericTaskDeclarations_Future_t GenericTaskDeclarations_runTaskAndGetFuture(GenericTaskDeclarations_Task_t task) 
{
  pthread_t pth;
  if ( task.argsSize == 0 ) 
  {
    pthread_create(&pth,0,task.fun,0);
  }  else 
  {
    void* args = malloc(task.argsSize);
    memcpy(args,task.args,task.argsSize);
    pthread_create(&pth,0,task.fun,args);
  }
  return (GenericTaskDeclarations_Future_t){ .pth = pth };
}

void* GenericTaskDeclarations_getFutureResult(GenericTaskDeclarations_Future_t* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,&(future->result));
    future->finished = true;
  }
  return future->result;
}

void GenericTaskDeclarations_joinVoidFuture(GenericTaskDeclarations_VoidFuture_t* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,0);
    future->finished = true;
  }
}

