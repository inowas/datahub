#!/usr/bin/env bash

# include file with helper functions
source "$(dirname "$0")/../util.inc.sh"

cd $projectRoot

outputHeadline "Building docker images"
docker compose build
exitWithErrorIfLastCommandFailed "Error building docker images"

docker compose up -d