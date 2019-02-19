#include<omp.h>
#include<stdio.h>
#include<stdlib.h>


int main(int argc, char *argv[])
{
  double a;
  a=92200;
  #pragma omp parallel default(none) firstprivate(a) //default(a) initialise à 0
  {
    a=a+290;
    printf("a vaut %f\n",a);
  }
  printf("a = %f\n",a);
  double b=777;
  printf("b = %f\n",b);
  #pragma omp parallel shared(b)
  {
    b=b+290;
  }
  printf("b = %f\n",b);
}
