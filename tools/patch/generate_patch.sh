#!/bin/bash
set -e

PATCH_NAME="v0.9.1_custom.patch"

# delete exist patch
if [ -f "../../patches/${PATCH_NAME}" ]; then
  rm "../../patches/${PATCH_NAME}"
fi

echo "start to git diff v0.9.1 tag and v0.9.1_custom branch..."
git diff v0.9.1 v0.9.1_custom -- ../../vllm/ > ../../patches/${PATCH_NAME}
echo "generate ${PATCH_NAME}, parent path is vllm/patches"
