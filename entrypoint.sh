#!/bin/sh -l

echo 1

CONFIG=$1
DEPLOYMENT=$2
CONTAINER=$3
IMAGE=$4

echo "$CONFIG" > ~/.kube/config

kubectl set image deployment/$DEPLOYMENT $CONTAINER=$IMAGE
