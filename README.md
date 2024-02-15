# Containers for bio-image processing

## Use case

Launch a container with a jupyter lab on a remote machine with a conda environment.

Use an environment for jupyter alone and other with toolkits.

Environments
- lab.yml : jupyter lab to launch notebooks by default
- imaging.yml : image format, scikit, scipy, pytorch, cellpose,

Container:
- micromamba.def: container based on micromamba 

Build the container from the yml file:
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