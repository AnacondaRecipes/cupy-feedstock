@REM Restore previous CUDA_PATH env var if it was set

@set "CUDA_PATH="
@if defined CONDA_CUPY_CUDA_PATH (
  set "CUDA_PATH=%CONDA_CUPY_CUDA_PATH%"
  set "CONDA_CUPY_CUDA_PATH="
)