#! /bin/bash
module load openmpi/3.1.1
module load python3/3.6.5


lmp=/projectnb/ryanlab/mmorey/mylammps/src/lmp_mpi


dname=CMES_Case4_16Aug24_14
output=/projectnb/ryanlab/mmorey/CMESPaper/tests/${dname}
dname1=${output}
mkdir -p ${dname1}

${lmp} -in input.lmp -var dname ${dname1}

exit
