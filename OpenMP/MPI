#include <stdio.h>
#include <math.h>
#include <mpi.h>

/* Define the function to be integrated here: */
double f(double x){
  return x*x;
}

/* Program begins */
int main(int argc, char** argv){
  int rank, size, i, n;
  double a, b, h, x, local_sum=0, total_sum;

  MPI_Init(&argc, &argv);  // Inicialización del entorno MPI
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);  // Obtiene el rango (ID) del proceso
  MPI_Comm_size(MPI_COMM_WORLD, &size);  // Obtiene el tamaño del comunicador

  if(rank == 0){
    printf("\nEnter the no. of sub-intervals: ");
    scanf("%d",&n);
    printf("\nEnter the initial limit: ");
    scanf("%lf",&a);
    printf("\nEnter the final limit: ");
    scanf("%lf",&b);
  }

  MPI_Bcast(&n, 1, MPI_INT, 0, MPI_COMM_WORLD);  // Envía el número de subintervalos a todos los procesos
  MPI_Bcast(&a, 1, MPI_DOUBLE, 0, MPI_COMM_WORLD);  // Envía el límite inicial a todos los procesos
  MPI_Bcast(&b, 1, MPI_DOUBLE, 0, MPI_COMM_WORLD);  // Envía el límite final a todos los procesos

  h = fabs(b-a)/n;  // Calcula el tamaño de cada subintervalo

  // Cada proceso calcula una parte de la suma local
  for(i = rank + 1; i < n; i += size){
    x = a + i*h;
    local_sum = local_sum + f(x);
  }

  MPI_Reduce(&local_sum, &total_sum, 1, MPI_DOUBLE, MPI_SUM, 0, MPI_COMM_WORLD);
  // Reduce todas las sumas locales en la suma total, y la envía al proceso 0

  if(rank == 0){
    double integral = (h/2)*(f(a)+f(b)+2*total_sum);  // Calcula la integral utilizando la fórmula del trapecio
    printf("\nThe integral is: %lf\n", integral);  // Imprime el resultado de la integral
  }

  MPI_Finalize();  // Finaliza el entorno MPI
  return 0;
}
