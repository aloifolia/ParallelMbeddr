#include "testSync.h"


#include "GenericDeclarations.h"

static <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> testSync_i;

int32_t main(int32_t argc, char* argv[]) 
{
  <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> i = (1);
  <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> i2 = i;
  int64_t i3 = i2.<!TextGen not found for 'TasksAndSyncs.structure.Unshare'!>;
  <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!>* j = &i;
  j-><!TextGen not found for 'TasksAndSyncs.structure.Share'!>;
  <!TextGen not found for 'TasksAndSyncs.structure.SharedRessourceType'!> l = "s".<!TextGen not found for 'TasksAndSyncs.structure.Share'!>;
  char* a = "a";
  
  return 0;
}


