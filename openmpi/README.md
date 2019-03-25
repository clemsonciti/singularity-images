# Singularity container for OpenMPI with Infiniband support

The Singularity recipe in this repository is based on the one described
in this [post](https://devblogs.nvidia.com/making-containers-easier-with-hpc-container-maker/)
about the HPC Container Maker.

## Building the container

Simply run:

```
$ sudo singularity build openmpi.simg openmpi.recipe
```

## Running: on Palmetto Cluster

The following instructions are specific to the Palmetto Cluster,
but something similar should work on other HPC clusters.

```
$ module load singularity
$ pbsdsh sleep 2 # ensures $TMPDIR creation on all nodes
$ uniq $PBS_NODEFILE > hosts.txt
$ export SINGULARITY="$(which singularity) exec --nv -B /etc/machine-id:/etc/machine-id openmpi.simg"
$ export OMPI_MCA_orte_launch_agent="${SINGULARITY} orted"
$ export MPICC="${SINGULARITY} mpicc"
$ export MPIRUN="${SINGULARITY} mpirun --hostfile hosts.txt"
```

Now, you should be able to compile programs with `$MPICC`
and run them with `$MPIRUN`.

```
$ curl -o https://computing.llnl.gov/tutorials/mpi/samples/C/mpi_bandwidth.c
$ $MPICC -o bandwidth mpi_bandwidth.c
$ $MPIRUN -n <num_tasks> ./bandwidth
```
