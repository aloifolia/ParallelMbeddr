#include "GenericTaskDeclarations.h"


#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"

void* GenericTaskDeclarations_getFutureResult(struct GenericTaskDeclarations_Future* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,&(future->result));
    future->finished = 1;
  }

  return future->result;
}


void GenericTaskDeclarations_saveAndJoinVoidFuture(struct GenericTaskDeclarations_VoidFuture future) 
{
  GenericTaskDeclarations_joinVoidFuture(&future);
}


void* GenericTaskDeclarations_saveFutureAndGetResult(struct GenericTaskDeclarations_Future future) 
{
  return GenericTaskDeclarations_getFutureResult(&future);
}


struct GenericTaskDeclarations_Future GenericTaskDeclarations_runTaskAndGetFuture(struct GenericTaskDeclarations_Task task) 
{
  pthread_t pth;
  pthread_create(&pth,0,task.fun,task.args);
  return (struct GenericTaskDeclarations_Future){ .pth = pth };
}


void GenericTaskDeclarations_joinVoidFuture(struct GenericTaskDeclarations_VoidFuture* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,0);
    future->finished = 1;
  }

}


struct GenericTaskDeclarations_VoidFuture GenericTaskDeclarations_runTaskAndGetVoidFuture(struct GenericTaskDeclarations_Task task) 
{
  pthread_t pth;
  pthread_create(&pth,0,task.fun,task.args);
  return (struct GenericTaskDeclarations_VoidFuture){ .pth = pth };
}


