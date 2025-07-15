.PHONY: validate help

validate: ## Validate config.yml against the JSON schema
	uvx check-jsonschema --schemafile config.schema.json config.yml

help: ## Show this help message
	@echo "Available targets:"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-10s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Default target
.DEFAULT_GOAL := validate