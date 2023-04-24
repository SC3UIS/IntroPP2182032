# IntroPP2182032
¡Por supuesto! A continuación, proporcionaré una explicación más detallada en formato README.md para GitHub.

# Evaluación de transformación de código a ejecución paralela utilizando OpenMP

Este repositorio contiene una evaluación para determinar la capacidad de transformar códigos en C/C++ en su ejecución paralela mediante el uso de OpenMP. Se proporcionan seis archivos, incluyendo el código original en C, el nuevo código en OpenMP, un archivo sbatch para la ejecución en GUANE-1, un archivo README con instrucciones detalladas y un archivo de salida. También se han registrado todas las modificaciones realizadas en el código fuente en los comentarios del mismo.

## Contenido del repositorio

- `original_code.c`: Archivo que contiene el código original en C que se va a transformar en su ejecución paralela utilizando OpenMP.

- `omp_trapezAreaSimple.c`: Nuevo código en OpenMP, donde se han modificado las partes necesarias para que el código se ejecute en paralelo. Se ha utilizado OpenMP para añadir directivas de procesamiento paralelo.

- `sbatch_file`: Archivo sbatch que se utilizará para la ejecución del código en el cluster GUANE-1.

- `README.md`: Archivo que contiene instrucciones detalladas sobre cómo compilar y ejecutar el código en su máquina local y en el cluster GUANE-1. También se describen las modificaciones realizadas en el código fuente y las directivas de procesamiento paralelo utilizadas.

- `output_trapezAreaSimple.txt`: Archivo de salida que contiene los resultados de la ejecución del nuevo código en OpenMP.

- `executable_file`: Archivo ejecutable generado después de compilar el nuevo código en OpenMP.

## Cómo compilar y ejecutar el código

Para compilar el código en su máquina local, abra una terminal y ejecute el siguiente comando:

```
gcc -o executable_file omp_trapezAreaSimple.c -fopenmp -lm
```

Para ejecutar el código en su máquina local, ejecute el siguiente comando:

```
./executable_file
```

Para ejecutar el código en el cluster GUANE-1, copie los archivos `omp_trapezAreaSimple.c` y `sbatch_file` en una carpeta en el cluster. Luego, ejecute el siguiente comando:

```
sbatch sbatch_file
```

Este comando enviará el trabajo al gestor de colas y comenzará la ejecución del código en el cluster.

## Modificaciones realizadas en el código

Las modificaciones realizadas en el código original en C se han registrado en los comentarios del código. Se han utilizado las directivas de procesamiento paralelo de OpenMP para transformar el código en su ejecución paralela.

## Resultados

Después de la ejecución del código, se generará un archivo de salida llamado `output_trapezAreaSimple.txt` que contiene los resultados de la ejecución del nuevo código en OpenMP.

¡Gracias por utilizar este repositorio de evaluación! Si tiene alguna pregunta o problema, no dude en ponerse en contacto con nosotros.
