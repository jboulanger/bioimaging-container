# Containers for bio-image processing

To ease the use of common python module, a apptainer container is defined with a conda environment including standard packages.

The container launches a jupyter notebook with a lig microscopy image analysis environment.

## Use case

Launch a container with a jupyter lab on a remote machine with a conda environment.

## Contents

- environment.yml : image formats, scikit, scipy, pytorch, cellpose, tensorflow, etc
- bioimaging.def: container based on mambaorg/micromamba

## Usage

Build the container from the def and yml file:
```bash
apptainer build --force bioimaging.sif bioimaging.def
```

Run as on a login node (note the --bind option to get access to data drives)
```bash
ssh <username@loginnode>
apptainer run --writable-tmpfs --bind /path/to/data:/path/ bioimaging.sif
```

Run on a compute node:
```bash
ssh <username@loginnode>
 srun --partition=gpu -c 112 --pty bash -i
 apptainer run  --nv --writable-tmpfs --bind /path/to/data:/path/to/data bioimaging.sif 
```

or on a gpu node:
```bash
ssh <username@loginnode>
srun -p ml --gres=gpu:4 --pty bash -i
apptainer run  --nv --writable-tmpfs --bind /path/to/data:/path/to/data bioimaging.sif 
```

Connect to the jupyter kernel.

## References

https://arcdocs.leeds.ac.uk/usage/conda-containers.html