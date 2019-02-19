#include<omp.h>
#include<stdio.h>
#include<stdlib.h>
#include <stdbool.h>

int main(int argc, char *argv[])
{
  double a=0;
  int rang;
  bool para;
  a=92.48;para=false;
  #pragma omp parallel private(rang,para)
  {
    rang=omp_get_thread_num();
    para=omp_in_parallel();
    printf("a vaut %f rang = %d para = %d\n",a,rang,para);
  }
}
