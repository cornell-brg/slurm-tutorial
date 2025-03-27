#!/bin/bash
#SBATCH --job-name=nfc35-vvadd
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2

srun --ntasks=1 --exclusive gem5.opt -d simout/32kB ${GEM5_CONFIG}/brg/RiscvMinorSimpleCaches.py --cmd build/vvadd.rv --L1D_size 32kB &
srun --ntasks=1 --exclusive gem5.opt -d simout/64kB ${GEM5_CONFIG}/brg/RiscvMinorSimpleCaches.py --cmd build/vvadd.rv --L1D_size 64kB &
wait