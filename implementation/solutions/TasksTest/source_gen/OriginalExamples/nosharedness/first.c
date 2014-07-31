#include "first.h"


#include "second.h"

static double first_i;

static int32_t first_foo(void);

static void first_bar(void);

int32_t main(int32_t argc, char* argv[]) 
{
  return 0;
}

static int32_t first_foo(void) 
{
  if ( false ) 
  {
    return 0;
  }
}

static void first_bar(void) 
{
  int32_t i;
  second_i = 3;
  first_i = 3.5;
  i = 2;
}

