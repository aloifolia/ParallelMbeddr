#include "queue.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "queue_SharedTypes_0.h"

void queue_queueInit(queue_SharedTypes_0_SharedOf_Queue_0_t* queue) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&(queue)->mutex);
  {
    queue->value.insertAt = 0;
    queue->value.deleteAt = 0;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
}

void queue_queueSafeAdd(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, long double item) 
{
  while (true)
  {
    {
      GenericSyncDeclarations_startSyncFor1Mutex(&(queue)->mutex);
      {
        int32_t newInsertAt = (queue->value.insertAt + 1) % QUEUE_QUEUESIZE;
        if ( queue->value.deleteAt == newInsertAt ) 
        {
          GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
          continue;
        }
        {
          GenericSharedDeclarations_SharedOf_long_double_0_t* slotI = &(queue->value.data[queue->value.insertAt]);
          {
            slotI->value = item;
          }
        }
        queue->value.insertAt = newInsertAt;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
      break;
    }
  }
}

void queue_queueSafeGet(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, long double* result) 
{
  while (true)
  {
    {
      GenericSyncDeclarations_startSyncFor1Mutex(&(queue)->mutex);
      {
        if ( queue->value.deleteAt == queue->value.insertAt ) 
        {
          GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
          continue;
        }
        
        {
          GenericSharedDeclarations_SharedOf_long_double_0_t* slotI = &(queue->value.data[queue->value.deleteAt]);
          {
            *result = slotI->value;
          }
        }
        int32_t newDeleteAt = (queue->value.deleteAt + 1) % QUEUE_QUEUESIZE;
        queue->value.deleteAt = newDeleteAt;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
      return ;
    }
  }
}

