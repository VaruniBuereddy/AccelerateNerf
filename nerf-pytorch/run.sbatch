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

# To profile Nerf using Wandb
python profile_nerf.py --config configs/lego.txt

# Train the model on the optimized hyperparameters on Synthetic Nerf dataset
python run_nerf.py --config configs/lego.txt
python run_nerf.py --config configs/drums.txt
python run_nerf.py --config configs/chair.txt

# Train model on LLFF dataset
python run_nerf.py --config configs/fern.txt
python run_nerf.py --config configs/flower.txt
python run_nerf.py --config configs/fortress.txt
python run_nerf.py --config configs/horns.txt
