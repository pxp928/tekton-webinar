#!/bin/bash

kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/git-clone/0.3/git-clone.yaml
kubectl apply -f https://raw.githubusercontent.com/buildpacks/tekton-integration/main/task/buildpacks/0.4/buildpacks.yaml
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/buildpacks-phases/0.2/buildpacks-phases.yaml
