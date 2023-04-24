#!/bin/bash
#SBATCH --job-name=trapezAreaSimple    # Nombre del trabajo SLURM
#SBATCH --output=output_trapezAreaSimple.txt    # Archivo de salida del trabajo SLURM
#SBATCH --ntasks=1    # Número de tareas que se ejecutarán (1 en este caso)
#SBATCH --nodes=1    # Número de nodos que se utilizarán (1 en este caso)
#SBATCH --cpus-per-task=4    # Número de CPUs por tarea (4 en este caso)

gcc -fopenmp omp_trapezAreaSimple.C -o omp_trapecio    # Compilar el programa C con OpenMP habilitado
./omp_trapecio    # Ejecutar el programa compilado
