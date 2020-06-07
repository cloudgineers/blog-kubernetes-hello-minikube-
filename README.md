# Hello Minikube

## Overview

A very simple Go webserver, deployed to Minikube with Docker.

## Prerequisites

- [Go](https://golang.org/doc/install)
- [Docker](https://docs.docker.com/v17.09/engine/installation/) 
- [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)

## Endpoints

|  Route    | Description                               |
|-----------|-------------------------------------------|
| /health   | Health check for the application          |
| /echo     | Returns basic information on the host     |


## Getting Started

### App Build

```sh
# install dependencies
go get

# build application
go build

# run application
./hello-minikube

# test application
go test
```

### Docker Build

```sh
# build docker image
docker build -t hello-minikube .

# run docker image
docker run --rm -p 8080:8080 hello-minikube
```

### Minikube Deploy

```sh
# start minikube
minikube start --kubernetes-version 1.18.3 --driver virtualbox

# apply k8s resources
kubectl apply -f k8s.yaml
```