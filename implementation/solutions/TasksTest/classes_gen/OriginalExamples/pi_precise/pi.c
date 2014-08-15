#include "pi.h"


#include <stdio.h>
#include <gmp.h>
#include <stdio.h>

static void pi_calcAndPrintError(mpf_t correctValue, mpf_t approxedValue);

static void pi_calcWithThreshold(mpf_t result, uint32_t threshold);

static void pi_calcPiBlock(mpf_t result, uint32_t start, uint32_t end);

static void pi_calcPiItem(mpf_t piItem, uint32_t index);

int32_t main(int32_t argc, char* argv[]) 
{
  mpf_set_default_prec(PI_PRECISION);
  
  mpf_t pi160;
  mpf_init_set_str(pi160, ((char*)(PI_PI160)), PI_BASE);
  
  mpf_t result;
  mpf_init_set_ui(result, 0);
  for ( uint32_t i = 0; i < PI_THRESHOLD; i += PI_BLOCKSIZE )
  {
    pi_calcPiBlock(result, i, i + PI_BLOCKSIZE);
  }
  pi_calcAndPrintError(pi160, result);
  
  printf("pi(iterations = %d, precision = %d) = \n",PI_THRESHOLD,PI_PRECISION);
  mpf_out_str(stdout, 10, 0, result);
  printf("\n\n");
  
  return 0;
}

static void pi_calcAndPrintError(mpf_t correctValue, mpf_t approxedValue) 
{
  mpf_t error;
  mpf_init(error);
  mpf_sub(error, correctValue, approxedValue);
  
  printf("error = \n");
  mpf_out_str(stdout, 10, 0, error);
  printf("\n\n");
}

static void pi_calcWithThreshold(mpf_t result, uint32_t threshold) 
{
  pi_calcPiBlock(result, 0, threshold);
}

static void pi_calcPiBlock(mpf_t result, uint32_t start, uint32_t end) 
{
  mpf_t piItem;
  mpf_init(piItem);
  
  for ( uint32_t i = start; i < end; ++i )
  {
    pi_calcPiItem(piItem, i);
    mpf_add(result, result, piItem);
  }
}

static void pi_calcPiItem(mpf_t piItem, uint32_t index) 
{
  mpf_t dividend;
  mpf_t base;
  mpf_init(dividend);
  mpf_init_set_d(base, -1.0);
  mpf_pow_ui(dividend, base, index);
  
  mpf_t divisor;
  mpf_init_set_d(divisor, 2.0);
  mpf_mul_ui(divisor, divisor, index);
  mpf_add_ui(divisor, divisor, 1);
  
  mpf_div(piItem, dividend, divisor);
  mpf_mul_ui(piItem, piItem, 4);
}

