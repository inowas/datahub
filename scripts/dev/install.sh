#!/usr/bin/env bash

# include file with helper functions
source "$(dirname "$0")/../util.inc.sh"

cd $projectRoot

outputHeadline "Creating .env file"
python create-envfile.py
exitWithErrorIfLastCommandFailed "Error creating .env file"