Build Notes
==========

To build a conda cupy package

* Build the required Docker containers:

    Dockerfiles can be found at: https://github.com/jjhelmus/docker-images

    CUDA 8.0, CuDNN 7: pkg_build_cuda80_cudnn7_centos6_dt2
    CUDA 9.0, CuDNN 7: pkg_build_cuda90_cudnn7_centos6_notoolset

* Start the docker container using:

    ```
    docker run -v `pwd`:/io -it pkg_build_cuda80_cudnn7_centos6_dt2 /bin/bash
    ```

* Update conda and conda-build, and navigate to the recipe root folder.

    Modify conda_build_config.yaml in this directory to specify the
    CUDA, CuDNN, and python versions.

    To start a build use:

    ```
    conda build .
    ```
