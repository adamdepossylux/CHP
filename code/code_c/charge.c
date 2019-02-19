#include<omp.h>
#include<stdio.h>
#include<stdlib.h>

int max(int a, int b);
int min(int a, int b);

int main(int argc, char *argv[])
{
  int n,Np,me,r;
  n=0;Np=0;me=0;r=0;
  int i1 [Np], in [Np];
  printf("Donnez les valeurs dans l'ordre n,Np : ");
  scanf("%d",&n);
  scanf("%d",&Np);
  double q;
  q=n/Np;
  r=n-Np*q;
  printf("q = %d\n",q);
  if(r==0)
  {
    for (me=0;me<Np;me++)
    {
      i1[me]=me*q;
      in[me]=(me+1)*q;
      printf("if %d %d %d\n",i1[me],in[me],in[me]-i1[me]);
    }
  }
  else
  {
    for(me=0;me<Np;me++)
    {
      if(me<r)
      {
        i1[me]=me*q;
        in[me]=(me+1)*q;
      }
      else
      {
        i1[me]=r+me*q;
        in[me]=i1[me]+q-1;
      }
      printf("else %d %d %d\n",i1[me],in[me],in[me]-i1[me]);
    }
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
