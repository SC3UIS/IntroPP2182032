# Cálculo de la Integral con Implementación Paralela MPI

Este proyecto tiene como objetivo calcular la integral de una función utilizando una implementación paralela con el estándar MPI (Message Passing Interface). Se compararán los tiempos de ejecución obtenidos para determinar su eficiencia.

## Descripción del Proceso

El proceso de cálculo de la integral utilizando MPI se divide en los siguientes archivos:

1. `mpi_trapezAreaSimple.c`: Contiene el código fuente de la implementación paralela con MPI.
2. `output_trapezAreaSimple.txt`: Archivo de salida que contiene el resultado del cálculo de la implementación paralela con MPI.
3. `trapezAreaSimple-mpi.sbatch`: Script de ejecución para la implementación paralela con MPI en un clúster de computadoras.
4. `trapezAreaSimple.C`: Código fuente de la implementación secuencial.
5. `omp_trapecio`: Código fuente de la implementación paralela con OpenMP.

## Compilación y Ejecución

Sigue los siguientes pasos para compilar y ejecutar la implementación paralela con MPI:

1. Compila el código fuente utilizando el comando:

   ```bash
   mpicc mpi_trapezAreaSimple.c -o mpi_trapezAreaSimple
   ```

2. Ejecuta el programa con MPI utilizando el comando:

   ```bash
   mpirun -np 12 ./mpi_trapezAreaSimple
   ```

Asegúrate de tener instalado el compilador y las bibliotecas MPI necesarias antes de compilar y ejecutar el programa.

## Comparativa de Tiempos de Ejecución

Se realizaron pruebas de tiempo de ejecución para el cálculo de la integral con diferentes configuraciones. A continuación se muestra un resumen de los tiempos obtenidos:

- **Implementación Secuencial (trapezAreaSimple.C):** 8.125 segundos
- **Implementación Paralela con OpenMP (omp_trapecio):** 4.322 segundos
- **Implementación Paralela con MPI (mpi_trapezAreaSimple):** 8.198 segundos

## Contenido del Repositorio

El repositorio contiene los siguientes archivos:

- `mpi_trapezAreaSimple.c`: Código fuente de la implementación paralela con MPI.
- `output_trapezAreaSimple.txt`: Archivo de salida que contiene el resultado del cálculo de la implementación paralela con MPI.
- `trapezAreaSimple-mpi.sbatch`: Script de ejecución para la implementación paralela con MPI en un clúster de computadoras.
- `trapezAreaSimple.C`: Código fuente de la implementación secuencial.
- `omp_trapecio`: Código fuente de la implementación paralela con OpenMP.
- 


![WhatsApp Image 2023-05-17 at 12 35 06 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/dbcb4031-7052-44e3-bdb2-412885d9a602)
![WhatsApp Image 2023-05-17 at 12 35 58 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/88e95dc5-f4da-4ff5-b6b1-c61a5a4279c3)
![WhatsApp Image 2023-05-17 at 12 36 16 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/598c0d19-8c2b-4487-99ef-c53b312805dc)



