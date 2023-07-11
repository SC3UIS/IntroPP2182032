#include <stdio.h>
#include <math.h>
#include <cuda_runtime.h>
#include <sys/time.h>

// Definición de la función f(x)
_host_ _device_ double f(double x){
  return x*x;
}

// Implementación de la función atomicAdd para números de punto flotante de doble precisión
_device_ double atomicAddDouble(double* address, double val) {
  unsigned long long int* address_as_ull = (unsigned long long int*)address;
  unsigned long long int old = *address_as_ull, assumed;
  do {
    assumed = old;
    old = atomicCAS(address_as_ull, assumed,
                    __double_as_longlong(val + __longlong_as_double(assumed)));
  } while (assumed != old);
  return __longlong_as_double(old);
}

// Kernel para calcular la integral utilizando CUDA
_global_ void integrate(double a, double b, int n, double h, double* result) {
  int i;
  double x, sum = 0.0;
  int idx = threadIdx.x + blockIdx.x * blockDim.x;
  int stride = blockDim.x * gridDim.x;
  
  for (i = idx + 1; i < n; i += stride) {
    x = a + i * h;
    sum += f(x);
  }
  
  sum *= 2.0;
  
  atomicAddDouble(result, sum);
}

// Función para obtener el tiempo actual en segundos con precisión de microsegundos
double getCurrentTime() {
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return tv.tv_sec + tv.tv_usec * 1e-6;
}

int main(){
  int n, blockSize, numBlocks;
  double a, b, h, integral;
  double* result;
  double* dev_result;
  
  // Solicitar al usuario la entrada necesaria
  printf("\nIngrese el número de subintervalos: ");
  scanf("%d", &n);
  printf("\nIngrese el límite inicial: ");
  scanf("%lf", &a);
  printf("\nIngrese el límite final: ");
  scanf("%lf", &b);
  
  // Calcular el tamaño del intervalo
  h = fabs(b - a) / n;
  
  // Configurar los bloques y los hilos
  blockSize = 256; // Puedes ajustar el tamaño del bloque según tus necesidades
  numBlocks = (n + blockSize - 1) / blockSize;
  
  // Asignar memoria para el resultado en el host y en el device
  result = (double*)malloc(sizeof(double));
  cudaMalloc((void**)&dev_result, sizeof(double));
  
  // Inicializar el resultado en 0
  *result = 0.0;
  cudaMemcpy(dev_result, result, sizeof(double), cudaMemcpyHostToDevice);
  
  // Medir el tiempo de inicio
  double start = getCurrentTime();
  
  // Lanzar el kernel en paralelo
  integrate<<<numBlocks, blockSize>>>(a, b, n, h, dev_result);
  cudaDeviceSynchronize();
  
  // Medir el tiempo de fin
  double end = getCurrentTime();
  
  // Copiar el resultado de vuelta al host
  cudaMemcpy(result, dev_result, sizeof(double), cudaMemcpyDeviceToHost);
  
  // Calcular el resultado de la integral
  integral = (h / 2) * (f(a) + f(b) + *result);
  
  // Imprimir la respuesta
  printf("\nEl resultado de la integral es: %lf\n", integral);
  
  // Calcular el tiempo transcurrido
  double elapsedTime = end - start;
  printf("Tiempo transcurrido: %.6f segundos\n", elapsedTime);
  
  // Cálculo del speedup y la escalabilidad
  int numThreads = numBlocks * blockSize;
  double sequentialTime = integral;
  double parallelTime = elapsedTime;
  double speedup = sequentialTime / parallelTime;
  double scalability = sequentialTime / (parallelTime * numThreads);
  
  printf("Speedup: %.2f\n", speedup);
  printf("Escalabilidad: %.2f\n", scalability);
  
  // Nueva métrica: Throughput
  double throughput = integral / elapsedTime;
  printf("Throughput: %.2f unidades por segundo\n", throughput);
  
  // Liberar memoria
  free(result);
  cudaFree(dev_result);
  
  return 0;
}
