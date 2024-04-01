#!/usr/bin/env bash

kind create cluster

kubectl get nodes

vcluster create my-cluster

vcluster list

devpod provider add kubernetes

devpod up https://github.com/aatchison/cnoe-devcontainer-feature-demo --ide none --provider kubernetes

# run examples
ssh cnoe-devcontainer-feature-demo.devpod -C "./idpbuilder-example.sh"
ssh cnoe-devcontainer-feature-demo.devpod -C "./cnoe-cli-example.sh"

sleep 10

devpod delete cnoe-devcontainer-feature-demo

kind delete clusters kind