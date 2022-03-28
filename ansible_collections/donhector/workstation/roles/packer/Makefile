## only run the linter, no testing
.PHONY: lint
lint:
	@poetry run molecule lint

## molecule test already does linting
.PHONY: test
test:
	@poetry run molecule test --all

## Spin up an instance
.PHONY: create
create:
	@poetry run molecule create

## Converge (run the playbook)
.PHONY: converge
converge: create
	@poetry run molecule converge

## Log into the running instance
.PHONY: login-%
login-%:
	@poetry run molecule login --host $*

## Destroy the instance
.PHONY: destroy
destroy:
	@poetry run molecule destroy

.PHONY: run
## Run the playbook locally without molecule
run:
	@poetry run ansible-playbook -v tests/test.yml -i tests/inventory
