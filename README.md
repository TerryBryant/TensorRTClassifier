## This repo here include:
+ One TensorRT GIE generate tool;
+ One TensorRT batch classification class;
+ One performance evaluation program;
+ The dockerfile for TensorRT development;
+ (TODO) A TensorRT detection class.

## Note:
+ All the projects are implemented in C++
+ Images are read using OpenCV

## Build & Run:
Run in docker container is recommended. Or if you want run in your own environment, you can follow the the scripts named "run_docker.sh" in each directory.

+ Generate TensorRT GIE engine

```
cd ${your_repo}/app/trt_gen_tool
sudo ./run_docker.sh --flagfile=../you_flagfile.ff
```
+ Run performance evaluation program

```
cd ${your_repo}/app/perf_eval
sudo ./run_docker.sh --flagfile=../your_flagfile.ff
```
## Tips:
Run in your own environment might encounter with cannot find TensorRT lib bug. You can fix this by:

```
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${your_tensorrt_lib_path}
```
