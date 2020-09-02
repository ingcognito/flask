SHELL := /bin/bash -e

export FLASK_APP=app
export FLASK_ENV=development

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

develop:
	flask run
	
init-db:
	flask init-db
