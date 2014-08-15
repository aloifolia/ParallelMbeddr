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
      /* 
       * clearly, this busy-waiting approach is only useful if the waiting time is small enough
       * => something like "wait for condition" might be helpful in the future
       * => native message passing might also be helpful (especially for directed communication
       *    via seperate channels, as opposed to one, since then a non-deterministic choice
       *    provides real benefit for the communication)
       */

      GenericSyncDeclarations_startSyncFor1Mutex(&(queue)->mutex);
      {
        int32_t newInsertAt = (queue_queueGetInsertAt(queue) + 1) % QUEUE_QUEUESIZE;
        int32_t deleteAt = queue_queueGetDeleteAt(queue);
        if ( deleteAt == newInsertAt ) 
        {
          GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
          continue;
        }
        /* 
         * lock unnecessary, here
         */

        queue_queueSetItemAt(queue, queue_queueGetInsertAt(queue), item);
        queue_queueSetInsertAt(queue, newInsertAt);
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
      break;
    }
  }
}

int32_t queue_queueGetInsertAt(queue_SharedTypes_0_SharedOf_Queue_0_t* queue) 
{
  {
    return queue->value.insertAt;
  }
}

void queue_queueSetInsertAt(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, int32_t newInsertAt) 
{
  {
    queue->value.insertAt = newInsertAt;
  }
}

int32_t queue_queueGetDeleteAt(queue_SharedTypes_0_SharedOf_Queue_0_t* queue) 
{
  {
    return queue->value.deleteAt;
  }
}

void queue_queueSetDeleteAt(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, int32_t newDeleteAt) 
{
  {
    queue->value.deleteAt = newDeleteAt;
  }
}

long double queue_queueGetItemAt(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, int32_t index) 
{
  {
    {
      GenericSharedDeclarations_SharedOf_long_double_0_t* wrappedItem = &queue->value.data[index];
      {
        return wrappedItem->value;
      }
    }
  }
}

void queue_queueSetItemAt(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, int32_t index, long double newItem) 
{
  {
    {
      GenericSharedDeclarations_SharedOf_long_double_0_t* wrappedItem = &queue->value.data[index];
      {
        wrappedItem->value = newItem;
      }
    }
  }
}

void queue_queueSafeGet(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, long double* result) 
{
  while (true)
  {
    {
      /* 
       * see above at queueSafeAdd()
       */

      GenericSyncDeclarations_startSyncFor1Mutex(&(queue)->mutex);
      {
        if ( queue_queueGetDeleteAt(queue) == queue_queueGetInsertAt(queue) ) 
        {
          GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
          continue;
        }
        /* 
         * lock unnecessary, here
         */

        
        *result = queue_queueGetItemAt(queue, queue_queueGetDeleteAt(queue));
        int32_t newDeleteAt = (queue_queueGetDeleteAt(queue) + 1) % QUEUE_QUEUESIZE;
        queue_queueSetDeleteAt(queue, newDeleteAt);
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
      return ;
    }
  }
}

