DOCKER_IMAGE=mui-bootstrap-styling-bug
VERSION=REPRODUCE_BUG

.PHONY: help
help: ## Show help message
	@grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:[[:blank:]]*\(##\)[[:blank:]]*/\1/' | column -s '##' -t

.PHONY: build
build: ## create production build assets
	@npm run build

.PHONY: clean
clean: ## remove production build assets
	@rm -Rf .next

.PHONY: setup
setup: ## setup repo for development
	@npm i

.PHONY: serve
serve: ## serve production build assets
	@npm run start

.PHONY: container
container: ## build deployable docker container
	@sudo docker build -t ${DOCKER_IMAGE}:${VERSION} .

.PHONY: container-start
container-start: ## run previously build docker container
	@echo running ${DOCKER_IMAGE}:${VERSION}
	@sudo docker run -p 3000:3000 ${DOCKER_IMAGE}:${VERSION}

.PHONY: dev-server
dev-server: ## start development server
	@npm run dev
