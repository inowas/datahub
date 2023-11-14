.SILENT:
.PHONY: help

# Based on https://gist.github.com/prwhite/8168133#comment-1313022

## This help screen
help:
	printf "Available commands\n\n"
	awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "%-40s -- %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)

## Install dev environment
install-dev:
	scripts/dev/install.sh

## Start dev environment
start-dev:
	scripts/dev/start.sh

## Stop dev environment
stop-dev:
	scripts/dev/stop.sh

## Update django static files
collect-statics:
	scripts/dev/collect-statics.sh
