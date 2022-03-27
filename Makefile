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
	@command -v pipenv  2>&1 >/dev/null || pip3 install pipenv
	@which pip3 | grep -q 'shim' && asdf reshim python || true
	@pipenv install --dev
	@pipenv run pre-commit install \
				--hook-type pre-commit \
				--hook-type commit-msg \
				--hook-type pre-push

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

## Test collection
.PHONY: test
test:
	$(call hr)
	@pipenv shell && $(MAKE) -C ansible_collections/donhector/workstation test

## Test role
.PHONY: test-%
test-%:
	$(call hr)
	@pipenv run $(MAKE) -C ansible_collections/donhector/workstation/roles/$* test

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
