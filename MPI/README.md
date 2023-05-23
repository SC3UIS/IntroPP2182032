# Cálculo de la Integral con Implementaciones Secuencial y Paralelas

Este proyecto tiene como objetivo calcular la integral de una función utilizando implementaciones secuenciales y paralelas. Se compararán los tiempos de ejecución de las diferentes implementaciones para determinar su eficiencia.

## Descripción del Proceso

El proceso de cálculo de la integral se divide en los siguientes pasos:

1. Se ingresan los parámetros necesarios, como el número de subintervalos, el límite inicial y el límite final.
2. La implementación secuencial, representada por el archivo `trapezAreaSimple.C`, realiza el cálculo de la integral utilizando un enfoque de un solo hilo o proceso.
3. La implementación paralela con OpenMP, representada por el archivo `omp_trapecio`, utiliza múltiples hilos para acelerar el cálculo de la integral.
4. La implementación paralela con MPI, representada por el archivo `mpi_trapezAreaSimple.c`, utiliza el estándar MPI para realizar cálculos paralelos en un clúster de computadoras.
5. Se comparan los tiempos de ejecución de las tres implementaciones para determinar la más eficiente.

## Comparativa de Tiempos de Ejecución

A continuación se muestra una comparativa de los tiempos de ejecución obtenidos para el cálculo de la integral con 7 subintervalos:

- **Implementación Secuencial (trapezAreaSimple.C):** 8.125 segundos
- **Implementación Paralela con OpenMP (omp_trapecio):** 4.322 segundos
- **Implementación Paralela con MPI (mpi_trapezAreaSimple):** 8.198 segundos

La implementación paralela con OpenMP muestra una mejora significativa en el tiempo de ejecución en comparación con la implementación secuencial. Sin embargo, la implementación paralela con MPI no muestra una mejora notable en este caso específico.

## Contenido del Repositorio

El repositorio contiene los siguientes archivos:

- `mpi_trapezAreaSimple`: Ejecutable de la implementación paralela con MPI.
- `mpi_trapezAreaSimple.c`: Código fuente de la implementación paralela con MPI.
- `output_trapezAreaSimple.txt`: Archivo de salida que contiene el resultado del cálculo de la implementación paralela con MPI.
- `trapezAreaSimple-mpi.sbatch`: Script de ejecución para la implementación paralela con MPI en un clúster de computadoras.
- `trapezAreaSimple.C`: Código fuente de la implementación secuencial.

## Requisitos y Ejecución

Para ejecutar las implementaciones, se requiere tener instalado el compilador y las bibliotecas necesarias. Asegúrate de seguir las instrucciones de instalación proporcionadas en cada archivo y compilarlos antes de ejecutarlos.

```bash
# Compilación de la implementación secuencial
gcc trapezAreaSimple.C -o trapezAreaSimple

# Ejecución de la implementación secuencial
./trapezAreaSimple

# Compilación de la implementación paralela con OpenMP
gcc -fopenmp omp_trapecio.c -o omp_trapecio

# Ejecución de la implementación paralela con OpenMP
./omp_trapecio

# Compilación de la implementación paralela con MPI
mpicc mpi_trapezAreaSimple.c -o mpi_trapezAreaSimple

# Ejecución de la implementación paralela con MPI
mpirun -np 12 ./mpi_trapezAreaSimple


![WhatsApp Image 2023-05-17 at 12 35 06 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/dbcb4031-7052-44e3-bdb2-412885d9a602)
![WhatsApp Image 2023-05-17 at 12 35 58 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/88e95dc5-f4da-4ff5-b6b1-c61a5a4279c3)
![WhatsApp Image 2023-05-17 at 12 36 16 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/598c0d19-8c2b-4487-99ef-c53b312805dc)



