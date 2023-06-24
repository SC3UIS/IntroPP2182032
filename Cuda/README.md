# Comparación de rendimiento: CUDA vs. OpenMP vs. MPI

Este repositorio contiene un programa en C que calcula una integral numérica utilizando tres enfoques diferentes: CUDA, OpenMP y MPI. El objetivo es comparar el rendimiento de estos enfoques en términos de velocidad, escalabilidad y throughput.

## Instrucciones de uso

1. Compila el programa para cada enfoque:

   - Para CUDA:

     ```bash
     nvcc cuda_integral.cu -o cuda_integral
     ```

   - Para OpenMP:

     ```bash
     gcc -fopenmp openmp_integral.c -o openmp_integral -lm
     ```

   - Para MPI:

     ```bash
     mpicc mpi_integral.c -o mpi_integral -lm
     ```

2. Ejecuta el programa para cada enfoque:

   - Para CUDA:

     ```bash
     ./cuda_integral
     ```

   - Para OpenMP:

     ```bash
     ./openmp_integral
     ```

   - Para MPI (puede requerir la ejecución en múltiples nodos):

     ```bash
     mpirun -np <num_procesos> ./mpi_integral
     ```

3. Sigue las instrucciones en pantalla para ingresar los parámetros necesarios.

4. Observa los resultados que incluyen la integral calculada, el tiempo transcurrido, el speedup, la escalabilidad y el throughput.

## Resultados obtenidos

A continuación se presentan los resultados obtenidos para diferentes configuraciones:

### CUDA

- Sub-intervalos: 10
- Límite inicial: 5
- Límite final: 7
- Integral: 72.680000
- Tiempo transcurrido: 0.000181 segundos
- Speedup: 401636.38
- Escalabilidad: 1568.89

### OpenMP (OMP)

- Sub-intervalos: 7
- Límite inicial: 5
- Límite final: 10
- Integral: 262.572886
- Tiempo transcurrido: 0.007145 segundos
- Throughput: 979.65 intervalos por segundo
- Speedup: 36747.12
- Escalabilidad: 2296.69

### Message Passing Interface (MPI)

- Sub-intervalos: 7
- Límite inicial: 5
- Límite final: 10
- Integral: 292.091837
- Tiempo transcurrido: 0.000031 segundos
- Throughput: 229376.00 intervalos por segundo
- Speedup: 9571265.31
- Escalabilidad: 9571265.31

## Conclusiones

- En términos de speedup y escalabilidad, CUDA muestra el mejor rendimiento, con un speedup de 401636.38 y una escalabilidad de 1568.89.
- En cuanto al tiempo transcurrido, MPI es la opción más rápida, con un tiempo de solo 0.000031 segundos.
- OMP muestra una buena tasa de rendimiento con un throughput de 979.65 intervalos por segundo.

Ten en cuenta que estos resultados se basan en los datos proporcionados y pueden no ser representativos en todos los escenarios o configuraciones.

## Contribuciones

Las contribuciones a este proyecto son bienvenidas. Si encuentras algún problema, tienes ideas para mejorar el rendimiento o deseas agregar más enfoques de cálculo, no dudes en enviar un pull request.

## Licencia

Este proyecto está bajo la licencia MIT.




![WhatsApp Image 2023-06-23 at 7 05 43 PM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/cb358b7d-f31e-408c-9bca-e84345a6c2c2)
![WhatsApp Image 2023-06-23 at 6 58 27 PM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/5da6bfd9-4a8f-4104-af97-36ec3e1669e5)
![WhatsApp Image 2023-06-23 at 6 58 02 PM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/eb7b4b8b-eebb-4008-83f1-5d40984a0407)
