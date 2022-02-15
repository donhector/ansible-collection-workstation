## only run the linter, no testing
.PHONY: lint
lint:
	@molecule lint

## molecule test already does linting
.PHONY: test
test:
	@molecule test --all

## Spin up an instance
.PHONY: create
create:
	@molecule create

## Converge (run the playbook)
.PHONY: converge
converge: create
	@molecule converge

## Log into the running instance
.PHONY: login
login:
	@molecule login -h $1

## Destroy the instance
.PHONY: destroy
destroy:
	@molecule destroy

.PHONY: run
## Run the playbook locally without molecule
run:
	@ansible-playbook -v tests/test.yml -i tests/inventory
