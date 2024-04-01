#!/usr/bin/env bash

kind create cluster

kubectl get nodes

vcluster create my-cluster

vcluster list

devpod provider add kubernetes

devpod up https://github.com/aatchison/cnoe-devcontainer-feature-demo --ide none --provider kubernetes

ssh idpbuilder.devpod -C "./idpbuilder-example.sh"

devpod delete idpbuilder