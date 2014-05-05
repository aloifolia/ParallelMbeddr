#include "GenericDeclarations.h"



struct GenericDeclarations_Future GenericDeclarations_runTaskAndGetFuture(struct GenericDeclarations_Task task) 
{
  pthread_t pth;
  pthread_create(&pth,0,task.fun,task.args);
  return (struct GenericDeclarations_Future){ .pth = pth };
}


void* GenericDeclarations_getFutureResult(struct GenericDeclarations_Future* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(&future->pth,0);
    future->finished = 1;
  }

  return future->result;
}


void GenericDeclarations_joinFuture(struct GenericDeclarations_Future* future) 
{
  if ( !(future->finished) ) 
  {
    pthread_join(&future->pth,0);
    future->finished = 1;
  }

}


