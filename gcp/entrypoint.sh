#!/bin/sh

CREDENTIAL=$1
CLUSTER=$2
ZONE=$3
PROJECT=$4
DEPLOYMENT=$5
CONTAINER=$6
IMAGE=$7

echo "$CREDENTIAL" > gcp-credential-key.json

gcloud auth activate-service-account --key-file gcp-credential-key.json
gcloud auth list

gcloud container clusters get-credentials $CLUSTER --zone us-central1-a --project rpntechserver

kubectl set image deployment/$DEPLOYMENT $CONTAINER=$IMAGE
