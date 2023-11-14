#!/usr/bin/env bash

# include file with helper functions
source "$(dirname "$0")/../util.inc.sh"

cd $projectRoot

outputHeadline "Collecting static files for django app"
docker compose exec django python manage.py collectstatic
exitWithErrorIfLastCommandFailed "Error collecting static files"