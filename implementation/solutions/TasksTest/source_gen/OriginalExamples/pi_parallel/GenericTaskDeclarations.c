#include "GenericTaskDeclarations.h"


#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>
#include <string.h>

void GenericTaskDeclarations_saveAndJoinVoidFuture(struct GenericTaskDeclarations_VoidFuture future) 
{
  GenericTaskDeclarations_joinVoidFuture(&future);
}


void GenericTaskDeclarations_joinVoidFuture(struct GenericTaskDeclarations_VoidFuture* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,0);
    future->finished = 1;
  }

}


struct GenericTaskDeclarations_Future GenericTaskDeclarations_runTaskAndGetFuture(struct GenericTaskDeclarations_Task task) 
{
  pthread_t pth;
  if ( task.argsSize == 0 ) 
  {
    pthread_create(&pth,0,task.fun,0);
  }
  else 
  {
    void* args = malloc(task.argsSize);
    memcpy(args,task.args,task.argsSize);
    pthread_create(&pth,0,task.fun,args);
  }

  return (struct GenericTaskDeclarations_Future){ .pth = pth };
}


void* GenericTaskDeclarations_getFutureResult(struct GenericTaskDeclarations_Future* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,&(future->result));
    future->finished = 1;
  }

  return future->result;
}


struct GenericTaskDeclarations_VoidFuture GenericTaskDeclarations_runTaskAndGetVoidFuture(struct GenericTaskDeclarations_Task task) 
{
  pthread_t pth;
  if ( task.argsSize == 0 ) 
  {
    pthread_create(&pth,0,task.fun,0);
  }
  else 
  {
    void* args = malloc(task.argsSize);
    memcpy(args,task.args,task.argsSize);
    pthread_create(&pth,0,task.fun,args);
  }

  return (struct GenericTaskDeclarations_VoidFuture){ .pth = pth };
}


void* GenericTaskDeclarations_saveFutureAndGetResult(struct GenericTaskDeclarations_Future future) 
{
  return GenericTaskDeclarations_getFutureResult(&future);
}


