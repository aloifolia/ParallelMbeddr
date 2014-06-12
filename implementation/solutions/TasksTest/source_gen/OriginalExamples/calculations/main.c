#include "main.h"


#include "readerData.h"
#include "constants.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <math.h>
#include <stdlib.h>

static struct GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0 main_factorCountBlocks;

static int32_t main_calculationCountPerWorker[CONSTANTS_numberOfWorkers];

struct main_Args_a0a1a2a3a2 {
  int16_t lastBlockSize;
};

struct main_Args_a0a3a2e0c {
  int16_t lastBlockSize;
};

struct main_Args_a0a0a1a2e0c {
  struct readerData_SharedTypes_0_SharedOf_Data_0 inputData;
};

struct main_Args_a0a3a2e0c_0 {
  struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* inputBlock;
  struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* resultBlock;
  int16_t lastBlockSize;
};

static int32_t main_calculateFactorCountBlocks(struct readerData_SharedTypes_0_SharedOf_Data_0* data);

static void main_calculateFactorCountBlock(struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* inputBlock,struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* resultBlock,int16_t blockSize);

static int32_t main_calculateFactorCount(int32_t number);

static int8_t main_readFile(int32_t argc,char* argv[],struct readerData_SharedTypes_0_SharedOf_Data_0* data);

static void* main_parFun_a0a0a1a2e0c(void* voidArgs);

static void* main_parFun_a0a3a2e0c(void* voidArgs);

static inline void main_init_inputData_0(struct readerData_SharedTypes_0_SharedOf_Data_0* inputData);

static inline void main_destroy_inputData_0(struct readerData_SharedTypes_0_SharedOf_Data_0* inputData);

static inline struct GenericTaskDeclarations_Task main_taskInit_a0a3a2e0c(int16_t lastBlockSize,struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* inputBlock,struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* resultBlock);

static inline struct GenericTaskDeclarations_Task main_taskInit_a0a0a1a2e0c(struct readerData_SharedTypes_0_SharedOf_Data_0 inputData);

int32_t main(int32_t argc, char* argv[]) 
{
  main_initAllGlobalMutexes_0();
  struct readerData_SharedTypes_0_SharedOf_Data_0 inputData;
  main_init_inputData_0(&inputData);
  if ( !(main_readFile(argc, argv, &inputData)) ) 
  {
    main_destroy_inputData_0(&inputData);
    return -1;
  }

  
  GenericSyncDeclarations_startSyncFor2Mutexes(&inputData.mutex, &main_factorCountBlocks.mutex);
  {
    int16_t blockCount = inputData.value.numberOfBlocks;
    int16_t lastBlockSize = inputData.value.lastBlockSize;
    if ( blockCount == 1 ) 
    {
      struct GenericTaskDeclarations_VoidFuture calculator;
      struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* inputBlock = &(inputData.value.blocks[0]);
      struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* resultBlock = &(main_factorCountBlocks.value[0]);
      GenericSyncDeclarations_startSyncFor2Mutexes(&inputBlock->mutex, &resultBlock->mutex);
      {
        <!TextGen not found for 'TasksAndSyncs.structure.TaskType'!> calcTask = main_taskInit_a0a3a2e0c(lastBlockSize, inputBlock, resultBlock);
        GenericTaskDeclarations_runTaskAndGetVoidFuture(calcTask);
      }

      GenericSyncDeclarations_stopSyncFor2Mutexes(&inputBlock->mutex, &resultBlock->mutex);
      main_calculationCountPerWorker[0] = ((int32_t)(inputData.value.lastBlockSize));
      GenericTaskDeclarations_joinVoidFuture(&calculator);
    }
    else 
    {
      struct GenericTaskDeclarations_Future calculators;
      for ( int8_t i = 0; i < CONSTANTS_numberOfWorkers; ++i )
      {
        calculators = GenericTaskDeclarations_runTaskAndGetFuture(main_taskInit_a0a0a1a2e0c(inputData));
      }

      for ( int8_t i = 0; i < CONSTANTS_numberOfWorkers; ++i )
      {
        int32_t* calculationCount = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&calculators)));
        main_calculationCountPerWorker[i] = ((int32_t)(inputData.value.lastBlockSize));
      }

    }

  }

  GenericSyncDeclarations_stopSyncFor2Mutexes(&inputData.mutex, &main_factorCountBlocks.mutex);
  
  main_destroy_inputData_0(&inputData);
  return 0;
}


static int32_t main_calculateFactorCountBlocks(struct readerData_SharedTypes_0_SharedOf_Data_0* data) 
{
  int32_t calculationCount = 0;
  struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* currentInputBlock;
  struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* currentResultBlock;
  int16_t currentBlockSize;
  while (1)
  {
    GenericSyncDeclarations_startSyncFor2Mutexes(&data->mutex, &main_factorCountBlocks.mutex);
    {
      if ( data->value.nextBlockIndex >= data->value.numberOfBlocks ) 
      {
        return calculationCount;
      }

      currentInputBlock = &(data->value.blocks[data->value.nextBlockIndex]);
      currentResultBlock = &(main_factorCountBlocks.value[data->value.nextBlockIndex]);
      
      currentBlockSize = (data->value.nextBlockIndex == (data->value.numberOfBlocks - 1)) ? (data->value.lastBlockSize) : (CONSTANTS_blockSize);
    }

    GenericSyncDeclarations_stopSyncFor2Mutexes(&data->mutex, &main_factorCountBlocks.mutex);
    
    for ( int16_t i = 0; i < currentBlockSize; ++i )
    {
      main_calculateFactorCountBlock(currentInputBlock, currentResultBlock, currentBlockSize);
      ++calculationCount;
    }

  }

  return calculationCount;
}


static void main_calculateFactorCountBlock(struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* inputBlock, struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* resultBlock, int16_t blockSize) 
{
  GenericSyncDeclarations_startSyncFor2Mutexes(&inputBlock->mutex, &resultBlock->mutex);
  {
    for ( int16_t i = 0; i < blockSize; ++i )
    {
      resultBlock->value[i] = main_calculateFactorCount(inputBlock->value[i]);
    }

  }

  GenericSyncDeclarations_stopSyncFor2Mutexes(&inputBlock->mutex, &resultBlock->mutex);
}


static int32_t main_calculateFactorCount(int32_t number) 
{
  for ( int32_t i = 2; i < sqrt(number); ++i )
  {
    int32_t factorCount;
    if ( number % i == 0 ) 
    {
      ++factorCount;
    }

    return factorCount;
  }

}


static int8_t main_readFile(int32_t argc, char* argv[], struct readerData_SharedTypes_0_SharedOf_Data_0* data) 
{
  if ( argc != 2 ) 
  {
    return 0;
  }

  FILE* file = fopen(argv[1],"r");
  if ( file == 0 ) 
  {
    return 0;
  }

  
  GenericSyncDeclarations_startSyncFor1Mutex(&data->mutex);
  {
    int16_t currentDataIndex = 0;
    int16_t currentBlockIndex = 0;
    int32_t number;
    while (!(feof(file)))
    {
      struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* currentData = &(data->value.blocks[currentDataIndex]);
      GenericSyncDeclarations_startSyncFor1Mutex(&currentData->mutex);
      {
        fscan(file,"%d",&number);
        (currentData->value)[currentBlockIndex] = number;
      }

      GenericSyncDeclarations_stopSyncFor1Mutex(&currentData->mutex);
      ++currentBlockIndex;
      if ( currentBlockIndex >= CONSTANTS_blockSize ) 
      {
        ++currentDataIndex;
        if ( currentDataIndex >= CONSTANTS_numberOfBlocks ) 
        {
          data->value.numberOfBlocks = CONSTANTS_numberOfBlocks;
          data->value.lastBlockSize = CONSTANTS_blockSize;
          return 1;
        }

        currentBlockIndex == 0;
      }

    }

    data->value.numberOfBlocks = currentDataIndex;
    data->value.lastBlockSize = currentBlockIndex;
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&data->mutex);
  
  return 1;
}


static void* main_parFun_a0a0a1a2e0c(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  struct main_Args_a0a0a1a2e0c* args = ((struct main_Args_a0a0a1a2e0c*)(voidArgs));
  *result = main_calculateFactorCountBlocks(&(args)->inputData);
  return result;
}


static void* main_parFun_a0a3a2e0c(void* voidArgs) 
{
  struct main_Args_a0a3a2e0c_0* args = ((struct main_Args_a0a3a2e0c_0*)(voidArgs));
  main_calculateFactorCountBlock((args)->, (args)->, (args)->lastBlockSize);
  return 0;
}


void main_initGlobalMutexesFor1Module_0(void) 
{
  GenericSharedDeclarations_initMutex_0(&main_factorCountBlocks.mutexAttribute, &main_factorCountBlocks.mutex);
  for ( int8_t __i_0 = 0; __i_0 < CONSTANTS_numberOfBlocks; __i_0++ )
  {
    GenericSharedDeclarations_initMutex_0(&main_factorCountBlocks[__i_0].mutexAttribute, &main_factorCountBlocks[__i_0].mutex);
  }

}


void main_initAllGlobalMutexes_0(void) 
{
  main_initGlobalMutexesFor1Module_0();
}


static  void main_init_inputData_0(struct readerData_SharedTypes_0_SharedOf_Data_0* inputData) 
{
  GenericSharedDeclarations_initMutex_0(&inputData->mutexAttribute, &inputData->mutex);
  for ( int8_t __i_3 = 0; __i_3 < CONSTANTS_numberOfBlocks; __i_3++ )
  {
    GenericSharedDeclarations_initMutex_0(&inputData->blocks[__i_3].mutexAttribute, &inputData->blocks[__i_3].mutex);
  }

}


static  void main_destroy_inputData_0(struct readerData_SharedTypes_0_SharedOf_Data_0* inputData) 
{
  GenericSharedDeclarations_destroyMutex_0(&inputData->mutex);
  for ( int8_t __i_3 = 0; __i_3 < CONSTANTS_numberOfBlocks; __i_3++ )
  {
    GenericSharedDeclarations_destroyMutex_0(&inputData->blocks[__i_3].mutex);
  }

}


static inline struct GenericTaskDeclarations_Task main_taskInit_a0a3a2e0c(int16_t lastBlockSize, struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* inputBlock, struct GenericSharedDeclarations_SharedOf_ArrayOf_int32_0* resultBlock) 
{
  struct main_Args_a0a3a2e0c_0* args_a0a3a2e0c = malloc(sizeof(struct main_Args_a0a3a2e0c_0));
  args_a0a3a2e0c->inputBlock = inputBlock;
  args_a0a3a2e0c->resultBlock = resultBlock;
  args_a0a3a2e0c->lastBlockSize = lastBlockSize;
  struct GenericTaskDeclarations_Task task = {args_a0a3a2e0c,&main_parFun_a0a3a2e0c};
  return task;
}


static inline struct GenericTaskDeclarations_Task main_taskInit_a0a0a1a2e0c(struct readerData_SharedTypes_0_SharedOf_Data_0 inputData) 
{
  struct main_Args_a0a0a1a2e0c* args_a0a0a1a2e0c = malloc(sizeof(struct main_Args_a0a0a1a2e0c));
  args_a0a0a1a2e0c->inputData = inputData;
  struct GenericTaskDeclarations_Task task = {args_a0a0a1a2e0c,&main_parFun_a0a0a1a2e0c};
  return task;
}


