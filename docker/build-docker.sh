#!/usr/bin/env bash

export LC_ALL=C

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-fewbit/fewbitd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/fewbitd docker/bin/
cp $BUILD_DIR/src/fewbit-cli docker/bin/
cp $BUILD_DIR/src/fewbit-tx docker/bin/
strip docker/bin/fewbitd
strip docker/bin/fewbit-cli
strip docker/bin/fewbit-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
