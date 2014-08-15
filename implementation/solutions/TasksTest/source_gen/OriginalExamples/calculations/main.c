#include "main.h"


#include "readerData.h"
#include "constants.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "main_SharedTypes_0.h"
#include <math.h>
#include <stdlib.h>

static GenericSharedDeclarations_SharedOf_ArrayOf_SharedOf_ArrayOf_int32_0_0_t main_factorCountBlocks;

static int32_t main_calculationCountPerWorker[CONSTANTS_numberOfWorkers];

typedef struct main_Args_a0a0c1a3d0c main_Args_a0a0c1a3d0c_t;
struct main_Args_a0a0c1a3d0c {
  GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* inputBlock;
  GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* resultBlock;
  int16_t lastBlockSize;
};

static int32_t main_calculateFactorCountBlocks(readerData_SharedTypes_0_SharedOf_Data_0_t* data);

static void main_calculateFactorCountBlock(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* inputBlock, GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* resultBlock, int16_t blockSize);

static int32_t main_calculateFactorCount(int32_t number);

static bool main_readFile(int32_t argc, char* argv[], readerData_SharedTypes_0_SharedOf_Data_0_t* data);

static void main_calculateFactorCountBlock_0(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* inputBlock, GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* resultBlock, int16_t blockSize);

static void* main_parFun_a0a0a1a3d0c(void* voidArgs);

static void* main_parFun_a0a0c1a3d0c(void* voidArgs);

static inline GenericTaskDeclarations_Task_t main_taskInit_a0a0c1a3d0c(int16_t lastBlockSize, GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* inputBlock, GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* resultBlock);

static GenericTaskDeclarations_Future_t main_futureInit_a0a0b0d3a2(readerData_SharedTypes_0_SharedOf_Data_0_t inputData);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  main_initAllGlobalMutexes_0();
  readerData_SharedTypes_0_SharedOf_Data_0_t inputData;
  readerData_SharedTypes_0_mutexInit_3(&inputData);
  if ( !(main_readFile(argc, argv, &inputData)) ) 
  {
    return -1;
  }
  
  {
    int16_t blockCount = inputData.value.numberOfBlocks;
    int16_t lastBlockSize = inputData.value.lastBlockSize;
    if ( blockCount == 1 ) 
    {
      GenericTaskDeclarations_VoidFuture_t calculator;
      {
        GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* inputBlock = &(inputData.value.blocks[0]);
        GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* resultBlock = &(main_factorCountBlocks.value[0]);
        {
          GenericSyncDeclarations_startSyncFor1Mutex(&(resultBlock)->mutex);
          {
            GenericTaskDeclarations_Task_t calcTask = main_taskInit_a0a0c1a3d0c(lastBlockSize, inputBlock, resultBlock);
          }
          GenericSyncDeclarations_stopSyncFor1Mutex(&(resultBlock)->mutex);
          GenericTaskDeclarations_runTaskAndGetVoidFuture(calcTask);
        }
      }
      main_calculationCountPerWorker[0] = ((int32_t)(inputData.value.lastBlockSize));
      GenericTaskDeclarations_joinVoidFuture(&calculator);
    }    else 
    {
      GenericTaskDeclarations_Future_t calculators;
      for ( int8_t i = 0; i < CONSTANTS_numberOfWorkers; ++i )
      {
        calculators = main_futureInit_a0a0b0d3a2(inputData);
      }
      for ( int8_t i = 0; i < CONSTANTS_numberOfWorkers; ++i )
      {
        int32_t* calculationCount = ((int32_t*)(GenericTaskDeclarations_getFutureResult(&calculators)));
        main_calculationCountPerWorker[i] = ((int32_t)(inputData.value.lastBlockSize));
      }
    }
  }
  
  return 0;
}

static int32_t main_calculateFactorCountBlocks(readerData_SharedTypes_0_SharedOf_Data_0_t* data) 
{
  int32_t calculationCount = 0;
  GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* currentInputBlock;
  GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* currentResultBlock;
  int16_t currentBlockSize;
  while (true)
  {
    {
      if ( data->value.nextBlockIndex >= data->value.numberOfBlocks ) 
      {
        return calculationCount;
      }
      currentInputBlock = &(data->value.blocks[data->value.nextBlockIndex]);
      currentResultBlock = &(main_factorCountBlocks.value[data->value.nextBlockIndex]);
      
      currentBlockSize = (data->value.nextBlockIndex == (data->value.numberOfBlocks - 1)) ? (data->value.lastBlockSize) : (CONSTANTS_blockSize);
    }
    
    for ( int16_t i = 0; i < currentBlockSize; ++i )
    {
      main_calculateFactorCountBlock_0(currentInputBlock, currentResultBlock, currentBlockSize);
      ++calculationCount;
    }
  }
  return calculationCount;
}

static void main_calculateFactorCountBlock(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* inputBlock, GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* resultBlock, int16_t blockSize) 
{
  {
    for ( int16_t i = 0; i < blockSize; ++i )
    {
      resultBlock->value[i] = main_calculateFactorCount(inputBlock->value[i]);
    }
  }
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

static bool main_readFile(int32_t argc, char* argv[], readerData_SharedTypes_0_SharedOf_Data_0_t* data) 
{
  if ( argc != 2 ) 
  {
    return false;
  }
  FILE* file = fopen(argv[1],"r");
  if ( file == 0 ) 
  {
    return false;
  }
  
  {
    int16_t currentDataIndex = 0;
    int16_t currentBlockIndex = 0;
    int32_t number;
    while (!(feof(file)))
    {
      {
        GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* currentData = &(data->value.blocks[currentDataIndex]);
        {
          fscan(file,"%d",&number);
          (currentData->value)[currentBlockIndex] = number;
        }
      }
      ++currentBlockIndex;
      if ( currentBlockIndex >= CONSTANTS_blockSize ) 
      {
        ++currentDataIndex;
        if ( currentDataIndex >= CONSTANTS_numberOfBlocks ) 
        {
          data->value.numberOfBlocks = CONSTANTS_numberOfBlocks;
          data->value.lastBlockSize = CONSTANTS_blockSize;
          return true;
        }
        currentBlockIndex == 0;
      }
    }
    data->value.numberOfBlocks = currentDataIndex;
    data->value.lastBlockSize = currentBlockIndex;
  }
  
  return true;
}

static void main_calculateFactorCountBlock_0(GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* inputBlock, GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* resultBlock, int16_t blockSize) 
{
  {
    for ( int16_t i = 0; i < blockSize; ++i )
    {
      resultBlock->value[i] = main_calculateFactorCount(inputBlock->value[i]);
    }
  }
}

static void* main_parFun_a0a0a1a3d0c(void* voidArgs) 
{
  int32_t* result = malloc(sizeof(int32_t));
  main_SharedTypes_0_Args_a0a0a1a3d0c_t* args = ((main_SharedTypes_0_Args_a0a0a1a3d0c_t*)(voidArgs));
  *result = main_calculateFactorCountBlocks(&(args)->inputData);
  free(voidArgs);
  return result;
}

static void* main_parFun_a0a0c1a3d0c(void* voidArgs) 
{
  main_Args_a0a0c1a3d0c_t* args = ((main_Args_a0a0c1a3d0c_t*)(voidArgs));
  main_calculateFactorCountBlock((args)->inputBlock, (args)->resultBlock, (args)->lastBlockSize);
  free(voidArgs);
  return 0;
}

void main_initGlobalMutexesFor1Module_0(void) 
{
  GenericSharedDeclarations_mutexInit_1(&main_factorCountBlocks);
}

void main_initAllGlobalMutexes_0(void) 
{
  main_initGlobalMutexesFor1Module_0();
}

static inline GenericTaskDeclarations_Task_t main_taskInit_a0a0c1a3d0c(int16_t lastBlockSize, GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* inputBlock, GenericSharedDeclarations_SharedOf_ArrayOf_int32_0_t* resultBlock) 
{
  main_Args_a0a0c1a3d0c_t* args_a0a0c1a3d0c = malloc(sizeof(main_Args_a0a0c1a3d0c_t));
  args_a0a0c1a3d0c->inputBlock = inputBlock;
  args_a0a0c1a3d0c->resultBlock = resultBlock;
  args_a0a0c1a3d0c->lastBlockSize = lastBlockSize;
  return (GenericTaskDeclarations_Task_t){args_a0a0c1a3d0c,&main_parFun_a0a0c1a3d0c,sizeof(main_Args_a0a0c1a3d0c_t)};
}

static GenericTaskDeclarations_Future_t main_futureInit_a0a0b0d3a2(readerData_SharedTypes_0_SharedOf_Data_0_t inputData) 
{
  main_SharedTypes_0_Args_a0a0a1a3d0c_t* args_a0a0b0d3a2 = malloc(sizeof(main_SharedTypes_0_Args_a0a0a1a3d0c_t));
  args_a0a0b0d3a2->inputData = inputData;
  pthread_t pth;
  pthread_create(&pth,0,&main_parFun_a0a0a1a3d0c,args_a0a0b0d3a2);
  return (GenericTaskDeclarations_Future_t){ .pth =pth};
}

