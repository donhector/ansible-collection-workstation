python
=========

Setup python and pip

Requirements
------------

None

Role Variables
--------------

- `python_packages`: List of OS packages to install

- `python_modules`: List of pip modules to install

The following module properties are accepted in `python_modules`:

- `name`: module name

- `version`: module version. This is optional.

- `state`: state of the module. One of 'present', 'absent', 'latest'. This is optional.

- `virtualenv`: name of the virtualenv where to work on. This is optional.

- `extra_args`: any additional arguments passed to the pip executable. This is optional.

Examples:

```yaml
python_packages: ## List of OS packages to install
  - python3-pip
  - python3-dev
  - python3-venv

python_modules:  ## List of pip modules to install
  - { name: 'pip', state: 'latest', extra_args: '--user' }
  - { name: 'pipenv', state: 'present', extra_args: '--user' }
```

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.python }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
