#!/bin/bash

#shellcheck source=/dev/null
source .credentials

flux bootstrap github \
  --components-extra=image-reflector-controller,image-automation-controller \
  --owner=$GITHUB_USER \
  --repository=k8s-sandbox-platform \
  --branch=main \
  --read-write-key \
  --path=./clusters/dev \
  --personal