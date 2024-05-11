#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=50:00:00
#SBATCH --mem=150GB
#SBATCH --gres=gpu:1
#SBATCH --job-name=run_nerf
#SBATCH --output=run_nerf.out

source venv/bin/activate

# python profile_nerf.py --config configs/lego.txt

python lpips_nerf.py --config configs/lego.txt 


# python run_nerf.py --config configs/airplane1.txt


# python run_nerf.py --config configs/lego.txt
# python run_nerf.py --config configs/drums.txt
# python run_nerf.py --config configs/chair.txt


# python run_nerf.py --config configs/fern.txt
# python run_nerf.py --config configs/flower.txt
# python run_nerf.py --config configs/fortress.txt
# python run_nerf.py --config configs/horns.txt
# # python run_nerf.py --config configs/mic.txt
# # python run_nerf.py --config configs/ship.txt
# # python run_nerf.py --config configs/drums.txt
# python run_nerf.py --config configs/materials.txt