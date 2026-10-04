#!/bin/sh

#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH --tasks-per-node 96
#SBATCH -p cpu-clx:test
#SBATCH -A bbp00039
#SBATCH -J r2_RdLs
#SBATCH --output=out.%x_%j
export DEAL_II_NUM_THREADS=1
module use /home/projects/bbp00039/dealii/dealii_v9.6.0_RL9/build/configuration/modulefiles
module load default
source /home/projects/bbp00039/dealii/dealii_v9.6.0_RL9/build/configuration/enable.sh
mpirun --map-by socket:pe=1 /scratch/usr/bbkgf134/aspect_build_fastscape/aspect r2_RdLs.prm