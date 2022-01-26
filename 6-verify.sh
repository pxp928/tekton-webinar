#!/bin/bash

export DOCKER_IMG=$(tkn pr describe --last -o jsonpath='{.spec.params[?(@.name=="APP_IMAGE")].value}')

crane ls "${DOCKER_IMG}"

cosign verify --key k8s://tekton-chains/signing-secrets "${DOCKER_IMG}"
cosign verify-attestation --key k8s://tekton-chains/signing-secrets "${DOCKER_IMG}"
