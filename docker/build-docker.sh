#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-vagnfedora/lqxd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/lqxd docker/bin/
cp $BUILD_DIR/src/lqx-cli docker/bin/
cp $BUILD_DIR/src/lqx-tx docker/bin/
strip docker/bin/lqxd
strip docker/bin/lqx-cli
strip docker/bin/lqx-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
