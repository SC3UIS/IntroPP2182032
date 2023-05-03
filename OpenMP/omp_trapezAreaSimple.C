#include<stdio.h>
#include<math.h>
#include<omp.h> // Esta es la biblioteca para OpenMP

/* Define la función a integrar aquí: */
double f(double x){
  return x*x;
}

/* El programa comienza */
int main(){
  int n,i;
  double a,b,h,x,sum=0,integral;
  /* Pedir al usuario la entrada necesaria */
  printf("\nEnter the no. of sub-intervals: ");
  scanf("%d",&n);
  printf("\nEnter the initial limit: ");
  scanf("%lf",&a);
  printf("\nEnter the final limit: ");
  scanf("%lf",&b);
  /* Comenzar el método trapezoidal:*/
  h=fabs(b-a)/n;

  #pragma omp parallel for shared(sum) private(i,x)
  for(i=1;i<n;i++){
    x=a+i*h;
    sum=sum+f(x);
  }

  integral=(h/2)*(f(a)+f(b)+2*sum);
  /* Imprimir la respuesta */
  printf("\nThe integral is: %lf\n",integral);
}
