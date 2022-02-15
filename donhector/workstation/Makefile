export PIPENV_VENV_IN_PROJECT := true

define hr
	@printf '%.s─' $$(seq 1 $$(tput cols))
endef

# ROLESDIR := $(abspath ./donhector/workstation/roles)
# ROLES = $(shell find $(ROLESDIR) -maxdepth 1 -mindepth 1 -type d)

# hector:
# 	@echo $(ROLESDIR)
# 	@echo $(ROLES)

.PHONY: all
all: install security test

.PHONY: install
install:
	$(call hr)
	@command -v python3 2>&1 >/dev/null || echo "Please install python3!"
	@command -v pipenv  2>&1 >/dev/null || pip3 install pipenv
	@which pip3 | grep -q 'shim' && asdf reshim python || true
	@pipenv install --dev
	@[ -f .git/hooks/pre-commit ] || pipenv run pre-commit install

## remove our pipenv environment
.PHONY: clean
clean:
	$(call hr)
	@pipenv --rm

## Update pipenv dependencies along with pre-commit
.PHONY: update
update:
	$(call hr)
	@pipenv update --dev
	@pipenv run pre-commit autoupdate

## Test for known vulnerabilities in our pipenv environment
.PHONY: security
security:
	$(call hr)
	@pipenv check

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
