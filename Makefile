.PHONY: validate 
validate: ## Validate config.yml against the JSON schema
	uvx check-jsonschema --schemafile config.schema.json config.yml
