#!/bin/bash
#SBATCH -J Next-dv
#SBATCH --mem=200gb
#SBATCH --nodes=1
#SBATCH --ntasks=48
#SBATCH --time=24:00:00
#SBATCH --error=error/nextdv.e%j
#SBATCH --output=log/nextdv.o%j


source /users/j/o/jotorr/enviro/mamba/micro/etc/profile.d/micromamba.sh

micromamba activate nextdenovo

cd /work/users/j/o/jotorr/next-neo/

nextDenovo run.cfg
