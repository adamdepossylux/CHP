#include<omp.h>
#include<stdio.h>
#include<stdlib.h>

int main(int argc, char *argv[])
{
  #pragma omp parallel
  printf("\nhello world : Printed by : %d \n",omp_get_thread_num());
}
