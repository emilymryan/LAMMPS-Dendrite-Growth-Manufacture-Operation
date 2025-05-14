#! /bin/bash
module load openmpi/3.1.1
module load python3/3.6.5


lmp=/projectnb/ryanlab/mmorey/mylammps_29Aug2024/src/lmp_mpi


dname=TEST
output=/projectnb/ryanlab/mmorey/LAMMPS_BATTERY_UPDATE/tests/${dname}
dname1=${output}
mkdir -p ${dname1}

${lmp} -in input.lmp -var dname ${dname1}

exit
