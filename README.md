<div align="center">

# <b>Accelerate NeRF</b>

###  Real-Time High-Precision Rendering with Instant NGP and Comparative Analysis

<img width="350" src="Images/title.png"/>

</div>

## Introduction

Inthe exploration of the 3D modeling domain and the metaverse, there is a growing emphasis on replicating our world with a high degree of realism. In addition, some things become clearer when we see them in 3D. It’s like gaining a different viewpoint that helps us understand stuff in a new way.
The approach to digitizing real-world objects involves the application of Neural Radiance Fields (NeRFs).

The primary objective of this project is to delve into the Neural Graphics Primitives (NGP) optimization technique and other strategies to facilitate real-time performance in the Neural Radiance Field (NeRF). We aim to comprehensively understand the impact of NGP and alternative optimization methods on the training and runtime efficiency of NeRF.



## Dataset

We have used nerf_synthetic and LLff dataset which can be downloaded from [here](https://drive.google.com/drive/folders/128yBriW1IG_3NJ5Rp7APSTZsJqdJdfc1) .

## Project milestones


### Dataset Preparation:

We preprocessed the Nerf-Synthetic and LLFF datasets, ensuring compatibility with both Nerf-pytorch and Instant NGP frameworks. These datasets contain diverse scenes with varying levels of complexity, allowing us to evaluate the models' performance across different scenarios.

### Training and Evaluation:
We trained both Nerf-pytorch and Instant NGP on the prepared datasets, employing standard training protocols and hyperparameters. Subsequently, we conducted thorough evaluations, including visualizations, performance profiling, and result interpretation.

### Visualizations:
We generated qualitative visualizations of the reconstructed scenes from both models to assess the quality of the reconstructions. Visual inspection allows for a comparative analysis of the models' ability to capture fine details and reproduce scene geometry accurately.

### Performance Profiling:
To quantify the computational efficiency and memory usage of Nerf-pytorch and Instant NGP, we conducted performance profiling experiments. These experiments provide insights into the models' scalability and resource requirements, crucial for practical deployment scenarios.

### Interpretation of Results:
Based on the evaluation results, we analyzed the strengths and weaknesses of Nerf-pytorch and Instant NGP. We considered factors such as reconstruction quality, computational efficiency, and memory footprint to determine the suitability of each model for different application scenarios.

### Inference:
We performed inference experiments using both models to assess their real-time performance and scalability. This evaluation is essential for applications requiring interactive rendering or deployment on resource-constrained devices.

### Lego trained weights

You can find the pre trained models for lego dataset inside results folder for each implementation as `model.pt` .
**Note**: For the scope of the project, only relevant hyperparameters are selected for sweeping.


## Results

Prompt (Image Description) | Stable Diffusion | Stable Diffusion (Fine-Tuned) | Original
:-------------------------:|:------:|:-------------------:|:-------------------------:
`A man is sitting in an office on his computer. He is speaking with a rat man who is at his computer.` | ![](./art/stable_diffusion_1.png) | ![](art/finetuned_1.png) |  ![](./art/original_1.png)
`Two soldiers are on horseback in a field. A bunch of businessman are trailing along behind them.` | ![](art/stable_diffusion_3.png) | ![](art/finetuned_3.png) | ![](art/original_3.png)
`A businessman is walking down the street. Next to him is another man, also with a briefcase` | ![](art/stable_diffusion_2.png) | ![](art/finetuned_2.png) | ![](art/original_2.png)


Prompt (Image Captions) | Stable Diffusion | Stable Diffusion (Fine-Tuned) | Original
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
`Evolution can be so tacky.` | ![](./art/stable_diffusion_4.png) |![](./art/finetuned_4.png) | ![](./art/original_4.png)
`Wait, this is yesterday's` | ![](./art/stable_diffusion_5.png) |  ![](./art/finetuned_5.png) |  ![](./art/original_5.png)


## Project Structure

| File/Directory | Description |
|----------------|-------------|
| `Images` | Images/artwork |
| `Results` | Results with model checkpoints |
| `notebooks` | Interactive notebooks for training and inference |
| `torch-ngp` | NGP training setup and scripts |
| `scripts` | SLURM batch files |
| `taichi-nerf` | taichi training setup and scripts |
| `nerf_pytorch` | NeRF training setup and scripts |



## Usage

**Note: It's highly recommended that you use a GPU.**

1. Clone the repository
    ```bash
    git clone https://github.com/VaruniBuereddy/AccelerateNerf.git
    ```
  ### NGP  
1. Setup and activate the virtual environment
    ```bash
    cd torch-ngp
    source venv/bin/activate
    ```
2. Install the required dependencies
    ```bash
    pip install -r requirements.txt
    ```
3. Run the training with profiling 
    ```bash
    python profile_ngp -- 
    ```
    ### NeRf
1. Setup and activate the virtual envirnoment
```

```
2. Run he training with profiling
```
```
 ### Taichi
Alternatively, the taichi model can also be trianed  by
scheduling a batch job on an HPC cluster using `sbatch scripts/taichi_NGP.sbatch`.

## References
```
@article{mueller2022instant,
    author = {Thomas M\"uller and Alex Evans and Christoph Schied and Alexander Keller},
    title = {Instant Neural Graphics Primitives with a Multiresolution Hash Encoding},
    journal = {ACM Trans. Graph.},
    issue_date = {July 2022},
    volume = {41},
    number = {4},
    month = jul,
    year = {2022},
    pages = {102:1--102:15},
    articleno = {102},
    numpages = {15},
    url = {https://doi.org/10.1145/3528223.3530127},
    doi = {10.1145/3528223.3530127},
    publisher = {ACM},
    address = {New York, NY, USA},
}
```
```
@misc{torch-ngp,
    Author = {Jiaxiang Tang},
    Year = {2022},
    Note = {https://github.com/ashawkey/torch-ngp},
    Title = {Torch-ngp: a PyTorch implementation of instant-ngp}
}
```

## Authors

- Varuni Buereddy (vb2386)
- Rajesh Nagula (rgn5646)

## License

This project is licensed under MIT License. See [LICENSE](./LICENSE).
