#!/bin/tcsh
#SBATCH --job-name=jupyter
#SBATCH --time=48:00:00
#SBATCH --partition=cpu
#SBATCH -c 112

apptainer run --writable-tmpfs --bind /cephfs2:/cephfs2,/cephfs:/cephfs /public/singularity/containers/lightmicroscopy/bioimaging-container/bioimaging
.sif
