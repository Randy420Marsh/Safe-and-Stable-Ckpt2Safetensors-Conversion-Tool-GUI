@echo off

setlocal enabledelayedexpansion

echo "Launching..."

cd %CD%

set "USER=%USERNAME%"

echo Current User = %USER%

set SAFETENSORS_FAST_GPU=1

set PYTORCH_CUDA_ALLOC_CONF=garbage_collection_threshold:0.9,max_split_size_mb:512

call .\venv\scripts\activate.bat

python run_app_gui.py
pause