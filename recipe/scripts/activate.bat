@REM Store existing CUDA_PATH env var and set to this conda env

@if defined CUDA_PATH (
    set "CONDA_CUPY_CUDA_PATH=%CUDA_PATH%"
)
@set "CUDA_PATH=%CONDA_PREFIX%"
