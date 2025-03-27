#!/bin/bash
#SBATCH --job-name=nfc35-vvadd
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2

srun --ntasks=1 --exclusive gem5.opt -d simout/4kB ${GEM5_CONFIG}/brg/RiscvMinorSimpleCaches.py --cmd build/vvadd.rv --L1D_size 4kB &
srun --ntasks=1 --exclusive gem5.opt -d simout/8kB ${GEM5_CONFIG}/brg/RiscvMinorSimpleCaches.py --cmd build/vvadd.rv --L1D_size 8kB &
wait