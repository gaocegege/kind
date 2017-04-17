#!/bin/sh

root=$(dirname "${BASH_SOURCE}")/..
location=$(pwd)

cd ${root}

echo "Build the localkube now."
docker run --rm \
  -v ${location}:/go/src/k8s.io/minikube \
  -e GOPATH=/go \
  -w /go/src/k8s.io/minikube/cmd/localkube \
  golang:1.7 bash -c "go build ."

cd - > /dev/null
