![WhatsApp Image 2023-05-17 at 12 35 06 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/dbcb4031-7052-44e3-bdb2-412885d9a602)
![WhatsApp Image 2023-05-17 at 12 35 58 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/88e95dc5-f4da-4ff5-b6b1-c61a5a4279c3)
![WhatsApp Image 2023-05-17 at 12 36 16 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/598c0d19-8c2b-4487-99ef-c53b312805dc)

El programa trapezAreaSimple, que es una implementación secuencial, tarda aproximadamente 8.125 segundos en ejecutarse para el caso de cálculo de la integral con 7 subintervalos.

El programa omp_trapecio, que utiliza OpenMP para paralelizar los cálculos en múltiples hilos, muestra una mejora significativa en el tiempo de ejecución. Tarda aproximadamente 4.322 segundos en calcular la integral con 7 subintervalos.

Por otro lado, el programa mpi_trapezAreaSimple, que utiliza el estándar MPI para realizar cálculos paralelos en un clúster de computadoras, muestra un tiempo de ejecución similar al programa secuencial. Tarda aproximadamente 8.198 segundos en calcular la integral con 7000 subintervalos y 12 procesos MPI.

En resumen, la implementación paralela con OpenMP (omp_trapecio) muestra una mejora significativa en el tiempo de ejecución en comparación con la implementación secuencial (trapezAreaSimple). Sin embargo, la implementación paralela con MPI (mpi_trapezAreaSimple) no muestra una mejora notable en este caso específico. Es importante tener en cuenta que los resultados pueden variar según el problema y la configuración del sistema.

