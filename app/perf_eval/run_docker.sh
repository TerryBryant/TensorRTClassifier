#!/bin/bash

name=perf_eval
#image=dev/tensorrt
image=dev/goku/cpp-trt

docker rm -f ${name}
rm -rf build
params=$@

nvidia-docker run -it \
  --name ${name} \
  -v `pwd`/../../:/work \
  ${image} \
  /bin/bash -c "cd /work/app/perf_eval && ./run_locally.sh ${params}"
