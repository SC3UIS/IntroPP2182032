![WhatsApp Image 2023-05-17 at 12 35 06 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/dbcb4031-7052-44e3-bdb2-412885d9a602)
![WhatsApp Image 2023-05-17 at 12 35 58 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/88e95dc5-f4da-4ff5-b6b1-c61a5a4279c3)
![WhatsApp Image 2023-05-17 at 12 36 16 AM](https://github.com/SC3UIS/IntroPP2182032/assets/46767951/598c0d19-8c2b-4487-99ef-c53b312805dc)


Para el programa omp_trapecio:

Tiempo real: 0m4.322s
Tiempo de usuario: 0m0.043s
Tiempo de sistema: 0m0.001s
Para el programa mpi_trapezAreaSimple:

Tiempo real: 0m8.198s
Tiempo de usuario: 0m0.011s
Tiempo de sistema: 0m0.012s
En ambos casos, los tiempos de usuario y sistema son relativamente bajos, lo que indica que el programa no requiere una gran cantidad de recursos del sistema durante su ejecución.

Sin embargo, en términos de tiempo real, el programa omp_trapecio se ejecuta más rápido, con un tiempo de 4.322 segundos, mientras que el programa mpi_trapezAreaSimple tarda 8.198 segundos en ejecutarse. Esto indica que el programa paralelo con MPI es más lento en comparación con el programa secuencial con OpenMP.

Es importante tener en cuenta que estos tiempos pueden variar según el hardware y la carga del sistema en el momento de la ejecución. También es posible que el tamaño del problema (número de subintervalos) influya en los tiempos de ejecución. Para obtener resultados más significativos, sería útil ejecutar los programas varias veces y calcular estadísticas más precisas sobre los tiempos de ejecución.
