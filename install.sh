#!/bin/bash
set -e

GHCR_TOKEN=$1

DRY_RUN=$2

if [ -z "$DRY_RUN" ]; then
  DRY_RUN="false"
elif [ "$DRY_RUN" == "true" ]; then
  echo "DRY_RUN is enabled"
fi

if [ -z "$GHCR_TOKEN" ]; then
  echo "GHCR_TOKEN is required"
  exit 1
fi

if [ "$DRY_RUN" == "false" ]; then
  git clone git@github.com:averato/vending-module-configuration.git
  cd vending-module-configuration
fi

echo $GHCR_TOKEN | docker login ghcr.io -u averato --password-stdin

docker compose up -d

docker logout ghcr.io
