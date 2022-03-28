ifneq (,$(wildcard ./.env))
    include .env
    export
endif

define hr
	@printf '%.s─' $$(seq 1 $$(tput cols))
endef

### Ansible/Molecule targets

## Lint collection
.PHONY: lint
lint:
	$(call hr)
	@poetry run molecule lint

## Lint specific role
.PHONY: lint-%
lint-%:
	$(call hr)
	@$(MAKE) -C roles/$* lint


## Test (with linting) the entire collection
.PHONY: test
test:
	$(call hr)
	@poetry run molecule test --all

## Test specific role
.PHONY: test-%
test-%:
	$(call hr)
	@$(MAKE) -C roles/$* test


## Run role aginst the host
.PHONY: run-%
run-%:
	$(call hr)
	@$(MAKE) -C roles/$* run


## Spin up the instance(s)
.PHONY: create
create:
	$(call hr)
	@poetry run molecule create


## Converge (runs the molecule/converge.yaml playbook)
.PHONY: converge
converge: create
	$(call hr)
	@poetry run molecule converge

## Log into the running instance
.PHONY: login
login:
	$(call hr)
	@poetry run molecule login


## Destroy the instance
.PHONY: destroy
destroy:
	$(call hr)
	@poetry run molecule destroy


### Ansible Galaxy targets

## Build collection
.PHONY: build
build:
	$(call hr)
	@poetry run ansible-galaxy collection build --force


## Publish collection to Galaxy
.PHONY: publish
publish: build
	$(call hr)
	@echo "token: ${GALAXY_API_KEY}" > ~/.ansible/galaxy_token
	@poetry run ansible-galaxy collection publish donhector-workstation-*.tar.gz


## Install collection from tarball
.PHONY: install
install: build
	$(call hr)
	@poetry run ansible-galaxy collection install donhector-workstation-*.tar.gz --force


## Run collection playbook
.PHONY: run
run: install
	$(call hr)
	@poetry run ansible-playbook -i localhost, donhector.workstation.setup
