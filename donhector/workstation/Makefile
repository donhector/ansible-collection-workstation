ifneq (,$(wildcard ./.env))
    include .env
    export
endif


define hr
	@printf '%.s─' $$(seq 1 $$(tput cols))
endef

### Ansible/Molecule targets

## only run the linter, no testing
.PHONY: lint
lint:
	$(call hr)
	@pipenv run molecule lint


## molecule test already does linting
.PHONY: test
test:
	$(call hr)
	@pipenv run molecule test --all


## Spin up the instance(s)
.PHONY: create
create:
	$(call hr)
	@pipenv run molecule create


## Converge (run the playbook)
.PHONY: converge
converge: create
	$(call hr)
	@pipenv run molecule converge

## Log into the running instance
.PHONY: login
login:
	$(call hr)
	@pipenv run molecule login


## Destroy the instance
.PHONY: destroy
destroy:
	$(call hr)
	@pipenv run molecule destroy


### Ansible Galaxy targets

## Build collection
.PHONY: build
build:
	$(call hr)
	@pipenv run ansible-galaxy collection build --force


## Publish collection to Galaxy
.PHONY: publish
publish: build
	$(call hr)
	@echo "token: ${GALAXY_API_KEY}" > ~/.ansible/galaxy_token
	@pipenv run ansible-galaxy collection publish donhector-workstation-*.tar.gz


## Install collection from tarball
.PHONY: install
install: build
	$(call hr)
	@pipenv run ansible-galaxy collection install donhector-workstation-*.tar.gz --force


## Run collection playbook
.PHONY: run
run: install
	$(call hr)
	@pipenv run ansible-playbook -i localhost, donhector.workstation.setup
