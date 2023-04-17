cd /common-data/kehanwang_data/mos2-phase/
export PATH=/common-data/kehanwang/lammps-develop/src/:$PATH
mpirun -np  8  lmp_mpi -partition 8x1 -in in.neb.hop2
