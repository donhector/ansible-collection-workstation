## only run the linter, no testing
.PHONY: lint
lint:
	@molecule lint

## molecule test already does linting
.PHONY: test
test:
	@molecule test --all

## Run just the role
.PHONY: run
run:
	@molecule converge
