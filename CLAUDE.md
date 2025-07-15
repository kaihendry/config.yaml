Goal of this project is to have a simple YAML config.yml, which can only have certain values.

For example:

```config.yaml
    ---
    deployment:
      location: paris
```

Any other key other than "deployment->location" should be shown as a warning or
error in VSCODE. "location" can only be the string "London" or "Paris" (case
insentive).

Please create the schema and .vscode/settings.json accordingly
