# Datahub

This is based of the [GeoNode template project](https://github.com/GeoNode/geonode-project).

## Prepare dev environment

`make install-dev`

## Start dev environment

`make start-dev`

Open geonode frontend at http://127.0.0.1. Use `admin` as username and password from `.env` file (see `ADMIN_PASSWORD`).

## Customize django frontend app

Change the theme as described in [GeoNode documentation](https://docs.geonode.org/en/master/basic/theme/index.html).
Changes must be made in folder `src/datahub/static` and `src/datahub/templates`.

If the changes are not visible, try to rebuild the static files folder by running `make collectstatic` (make sure you 
started the dev environment first).


