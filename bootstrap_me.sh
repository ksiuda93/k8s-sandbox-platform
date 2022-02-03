#!/bin/bash

source ./.credentials

flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=k8s-sandbox-platform \
  --branch=master \
  --path=./clusters/dev \
  --personal