import matplotlib.pyplot as plt
import numpy as np

# Read data from the text file
data_file = "psnr.txt"
global_steps = []
psnr_values = []
ssim_values = []
lpips_values = []

with open(data_file, "r") as file:
    for line in file:
        if "Global Step" in line:
            parts = line.split()
            global_step = int(parts[2])
            global_steps.append(global_step)

            # Extract PSNR value
            psnr_index = parts.index('PSNR:')
            psnr = float(parts[psnr_index + 1])
            psnr_values.append(psnr)

            # Extract SSIM value
            ssim_index = parts.index('SSIM:')
            ssim = float(parts[ssim_index + 1])
            ssim_values.append(ssim)

            # Extract LPIPS value
            lpips_index = parts.index('LPIPS:')
            lpips = float(parts[lpips_index + 1])
            lpips_values.append(lpips)

# Plot PSNR, SSIM, and LPIPS against global step
fig, axes = plt.subplots(nrows=1, ncols=3, figsize=(15, 5))

axes[0].plot(global_steps, psnr_values, color='blue')
axes[0].set_title('PSNR')
axes[0].set_xlabel('Global Step')
axes[0].set_ylabel('PSNR')

axes[1].plot(global_steps, ssim_values, color='green')
axes[1].set_title('SSIM')
axes[1].set_xlabel('Global Step')
axes[1].set_ylabel('SSIM')

axes[2].plot(global_steps, lpips_values, color='red')
axes[2].set_title('LPIPS')
axes[2].set_xlabel('Global Step')
axes[2].set_ylabel('LPIPS')

# Adjust layout to prevent overlap
plt.tight_layout()

# Save the plot
plt.savefig('eval_metrics.png')

# Show the plot
plt.show()
