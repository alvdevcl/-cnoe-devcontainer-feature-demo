#!/usr/bin/env bash

#init

# generate crd from templates
mkdir -p ./generated
pushd generated
cnoe template crd -i ../examples/cnoe-cli/spark/ -t ../examples/cnoe-cli/k8s-apply-template.yaml

kubectl apply -f .

sleep 5
# clean up
popd
rm -Rfv ./generated
