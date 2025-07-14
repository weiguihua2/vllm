#!/bin/bash
set -e

if [ $# -ne 1 ]; then
    echo "error: need absolute path of patches argument."
    exit 1
fi

PATCH_ROOT=$1

cd ./vllm

echo "checkout vllm tag v0.9.1"
git checkout tags/v0.9.1
git apply --whitespace=nowarn $PATCH_ROOT/v0.9.1_custom.patch
echo "apply patch end"
