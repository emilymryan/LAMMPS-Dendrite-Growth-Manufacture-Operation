#! /bin/bash -l
#$ -l h_rt=120:00:00
#$ -P ryanlab
#$ -m bea
#$ -j y
#$ -N CMESC1
#$ -o /projectnb/ryanlab/mmorey/SPH_Paper/newresults/final/$JOB_NAME.o$JOB_ID
#$ -e /projectnb/ryanlab/mmorey/SPH_Paper/newresults/final/$JOB_NAME.e$JOB_ID
#$ -pe mpi_16_tasks_per_node 32
module load openmpi/3.1.1
module load python3/3.6.5

lmp=/projectnb/ryanlab/mmorey/mylammps/src/lmp_mpi

dname1=SPH_17April25_PPtest_${JOB_ID}
output=/projectnb/ryanlab/mmorey/SPH_Paper/newresults/${dname1}
dname=${output}
mkdir -p ${dname}

mpirun -np $NSLOTS ${lmp} -in input.lmp -var dname ${dname}

exit

