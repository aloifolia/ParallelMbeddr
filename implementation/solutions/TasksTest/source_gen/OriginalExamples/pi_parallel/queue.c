#include "queue.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "queue_SharedTypes_0.h"

void queue_queueInit(struct queue_SharedTypes_0_SharedOf_Queue_0* queue) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&queue->mutex);
  {
    queue->value.insertAt = 0;
    queue->value.deleteAt = 0;
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&queue->mutex);
}


void queue_queueClear(struct queue_SharedTypes_0_SharedOf_Queue_0* queue) 
{
}


void queue_queueSafeAdd(struct queue_SharedTypes_0_SharedOf_Queue_0* queue, long double item) 
{
  while (1)
  {
    GenericSyncDeclarations_startSyncFor1Mutex(&queue->mutex);
    {
      int32_t newInsertAt = (queue->value.insertAt + 1) % QUEUE_QUEUESIZE;
      if ( queue->value.deleteAt == newInsertAt ) 
      {
        GenericSyncDeclarations_stopSyncFor1Mutex(&queue->mutex);
        continue;
      }

      struct GenericSharedDeclarations_SharedOf_long_double_0* slotI = &(queue->value.data[queue->value.insertAt]);
      GenericSyncDeclarations_startSyncFor1Mutex(&slotI->mutex);
      {
        slotI->value = item;
      }

      GenericSyncDeclarations_stopSyncFor1Mutex(&slotI->mutex);
      queue->value.insertAt = newInsertAt;
      GenericSyncDeclarations_stopSyncFor1Mutex(&queue->mutex);
      break;
    }

    GenericSyncDeclarations_stopSyncFor1Mutex(&queue->mutex);
  }

}


void queue_queueSafeGet(struct queue_SharedTypes_0_SharedOf_Queue_0* queue, long double* result) 
{
  while (1)
  {
    GenericSyncDeclarations_startSyncFor1Mutex(&queue->mutex);
    {
      if ( queue->value.deleteAt == queue->value.insertAt ) 
      {
        GenericSyncDeclarations_stopSyncFor1Mutex(&queue->mutex);
        continue;
      }

      
      struct GenericSharedDeclarations_SharedOf_long_double_0* slotI = &(queue->value.data[queue->value.deleteAt]);
      GenericSyncDeclarations_startSyncFor1Mutex(&slotI->mutex);
      {
        *result = slotI->value;
      }

      GenericSyncDeclarations_stopSyncFor1Mutex(&slotI->mutex);
      int32_t newDeleteAt = (queue->value.deleteAt + 1) % QUEUE_QUEUESIZE;
      queue->value.deleteAt = newDeleteAt;
      GenericSyncDeclarations_stopSyncFor1Mutex(&queue->mutex);
      return ;
    }

    GenericSyncDeclarations_stopSyncFor1Mutex(&queue->mutex);
  }

}


