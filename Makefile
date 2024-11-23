.PHONY: help test

test: ## Execute tests
	go test -race -shuffle=on ./...

lint: ## Generate codes
	golangci-lint run --fix

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
