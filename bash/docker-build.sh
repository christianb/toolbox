#!/bin/bash

DOCKER_REPO_NAME=$1
DOCKER_REPO_VERSION=$2

docker build -t ${DOCKER_ID_USER}/${DOCKER_REPO_NAME}:${DOCKER_REPO_VERSION} .
