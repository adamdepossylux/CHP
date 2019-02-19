#include<omp.h>
#include<stdio.h>
#include<stdlib.h>

int max(int a, int b);
int min(int a, int b);

int main(int argc, char *argv[])
{
  int n=4096;
  double a [n];
  int i,imin,imax,rang,nb_taches;
  #pragma omp parallel private(rang,nb_taches,imin,imax)
  {
    rang=omp_get_thread_num();
    nb_taches= omp_get_num_threads();
    imin=n;
    imax=0;
    i=1;
  #pragma omp while #schedule(static,n/nb_taches)
  {
    do
    {
      a[i]=402.+i;
      imin=min(i,imin);
      imax=max(i,imax);
      i++;
    }
    while(i<=n);
  }
  printf("\nrang=%d\n imin = %d\n imax = %d\n",rang,imin,imax);
  }
}

int max(int a, int b)
{
  if(a>=b)
    return a;
  else
    return b;
}

int min(int a, int b)
{
  if(a<=b)
    return a;
  else
    return b;
}
