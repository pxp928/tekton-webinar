#!/bin/bash

kubectl patch configmap chains-config -n tekton-chains -p='{"data":{"artifacts.taskrun.format": "in-toto"}}'
kubectl patch configmap chains-config -n tekton-chains -p='{"data":{"artifacts.taskrun.storage": "oci,tekton"}}'

