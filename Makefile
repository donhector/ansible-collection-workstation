ifneq (,$(wildcard ./.env))
    include .env
    export
endif

define hr
	@printf '%.s─' $$(seq 1 $$(tput cols))
endef

.PHONY: all
all: install security

## create a venv with the tools required for this project
.PHONY: install
install:
	$(call hr)
	@command -v python3 2>&1 >/dev/null || echo "Please install python3!"
	@command -v poetry  2>&1 >/dev/null || pip3 install poetry
	@which pip3 | grep -q 'shim' && asdf reshim python || true
	@poetry install --remove-untracked

## install precommit hooks
.PHONY: precommit
precommit:
	$(call hr)
	@poetry run pre-commit install \
				--hook-type pre-commit \
				--hook-type commit-msg \
				--hook-type pre-push

setup: install precommit

## remove our poetry environment
.PHONY: clean
clean:
	$(call hr)
	@poetry env remove ./.venv

## Update poetry dependencies along with pre-commit
.PHONY: update
update:
	$(call hr)
	@poetry update
	@poetry run pre-commit autoupdate

## Test for known vulnerabilities in our poetry environment
.PHONY: security
security:
	$(call hr)
	@poetry run safety check --ignore 42923
	$(call hr)
	@poetry run bandit -r ansible_collections/donhector/workstation

## Test collection
.PHONY: test
test:
	$(call hr)
	@$(MAKE) -C ansible_collections/donhector/workstation test

## Test role
.PHONY: test-%
test-%:
	$(call hr)
	@$(MAKE) -C ansible_collections/donhector/workstation/roles/$* test

## lint collection
.PHONY: lint
lint:
	$(call hr)
	@$(MAKE) -C ansible_collections/donhector/workstation lint

## lint role
.PHONY: lint-%
lint-%:
	$(call hr)
	@$(MAKE) -C ansible_collections/donhector/workstation/roles/$* lint

## run role on local host
.PHONY: run-%
run-%:
	$(call hr)
	@$(MAKE) -C ansible_collections/donhector/workstation/roles/$* run

## create molecule instances
.PHONY: create
create:
	$(call hr)
	@$(MAKE) -C ansible_collections/donhector/workstation/ create

.PHONY: converge
converge:
	$(call hr)
	@$(MAKE) -C ansible_collections/donhector/workstation/ converge

.PHONY: converge-%
converge-%:
	$(call hr)
	@$(MAKE) -C ansible_collections/donhector/workstation/roles/$* converge
