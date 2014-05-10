#include "GenericDeclarations.h"



void GenericDeclarations_joinFuture(struct GenericDeclarations_Future* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,0);
    future->finished = 1;
  }

}


void GenericDeclarations_saveAndJoinVoidFuture(struct GenericDeclarations_VoidFuture future) 
{
  GenericDeclarations_joinVoidFuture(&future);
}


void* GenericDeclarations_getFutureResult(struct GenericDeclarations_Future* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,0);
    future->finished = 1;
  }

  return future->result;
}


struct GenericDeclarations_VoidFuture GenericDeclarations_runTaskAndGetVoidFuture(struct GenericDeclarations_Task task) 
{
  pthread_t pth;
  pthread_create(&pth,0,task.fun,task.args);
  return (struct GenericDeclarations_VoidFuture){ .pth = pth };
}


struct GenericDeclarations_Future GenericDeclarations_runTaskAndGetFuture(struct GenericDeclarations_Task task) 
{
  pthread_t pth;
  pthread_create(&pth,0,task.fun,task.args);
  return (struct GenericDeclarations_Future){ .pth = pth };
}


void GenericDeclarations_joinVoidFuture(struct GenericDeclarations_VoidFuture* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(future->pth,0);
    future->finished = 1;
  }

}


void GenericDeclarations_saveAndJoinFuture(struct GenericDeclarations_Future future) 
{
  GenericDeclarations_joinFuture(&future);
}


