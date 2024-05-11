#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=50:00:00
#SBATCH --mem=150GB
#SBATCH --gres=gpu:1
#SBATCH --job-name=ngp
#SBATCH --output=ngp.out

source venv/bin/activate
# python main_nerf.py  ../nerf-pytorch/data/nerf_synthetic/lego --workspace trial_nerf -O --bound 1.0 --scale 0.8 --dt_gamma 0

python main_nerf.py  ../nerf-pytorch/data/nerf_synthetic/lego --workspace logs/log_lego -O --bound 1.0 --scale 0.8 --dt_gamma 0

python main_nerf.py  ../nerf-pytorch/data/nerf_synthetic/drums --workspace logs/log_drums -O --bound 1.0 --scale 0.8 --dt_gamma 0


python main_nerf.py  ../nerf-pytorch/data/nerf_synthetic/chair --workspace logs/log_chair -O --bound 1.0 --scale 0.8 --dt_gamma 0


python main_nerf.py  ../nerf-pytorch/data/nerf_llff_data/fern --workspace logs/log_fern -O --bound 1.0 --scale 0.8 --dt_gamma 0

python main_nerf.py  ../nerf-pytorch/data/nerf_llff_data/flower --workspace logs/log_flower -O --bound 1.0 --scale 0.8 --dt_gamma 0


