# Containers for bio-image processing

To ease the use of common python module, a apptainer container is defined with a conda environment including standard packages.

## Use case

Launch a container with a jupyter lab on a remote machine with a conda environment.

## Contents

- environment.yml : image formats, scikit, scipy, pytorch, cellpose, tensorflow
- micromamba.def: container based on micromamba 

## Usage

Build the container from the def and yml file:
```bash
apptainer build --force bioimaging.sif bioimaging.def
```

Run as
```bash
apptainer run --nv  --writable-tmpfs  micromamba.sif
```

Connect to the jupyter kernel.

## References

https://arcdocs.leeds.ac.uk/usage/conda-containers.html