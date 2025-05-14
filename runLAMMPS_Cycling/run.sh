 #! /bin/bash
module load openmpi/3.1.1
module load python3/3.6.5


lmp=/projectnb/ryanlab/mmorey/mylammps_29Aug2024/src/lmp_mpi

dname=test_16April25_1
output=/projectnb/ryanlab/mmorey/SPHPaper/Cycling/tests/${dname}
dname1=${output}
mkdir -p ${dname1}

${lmp} -in input_RPP_SE.lmp -var dname ${dname1}

exit
