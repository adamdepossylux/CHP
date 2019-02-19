#include<omp.h>
#include<stdio.h>
#include<stdlib.h>

int main(int argc, char *argv[])
{

int n=9;
int rang=4,i=1;
#pragma omp parallel
{
rang=omp_get_thread_num();
i=1;
#pragma omp while schedule(runtime) ordered nowait
{
  do
  {
    #pragma ordered
    {
      printf("rang = %d iterations = %d\n",rang,i);
      i++;
    }
  }
  while(i<n);
}
}
}
