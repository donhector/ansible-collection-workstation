ifneq (,$(wildcard ./.env))
    include .env
    export
endif


define hr
	@printf '%.s─' $$(seq 1 $$(tput cols))
endef


.PHONY: all
all: install security

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

## Test collection
.PHONY: test
test:
	$(call hr)
	@$(MAKE) -C donhector/workstation test

## Test role
.PHONY: test-%
test-%:
	$(call hr)
	@$(MAKE) -C donhector/workstation/roles/$* test
