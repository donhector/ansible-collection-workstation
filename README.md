# Ansible Collection - donhector.workstation

Ansible collection that includes the roles to setup my workstation.

This repo uses the following toolchain:

- pre-commit checks
- conventional commit messages enforcement via commitizen
- semantic release for automatic versioning
- github actions for CI and CD
  -- CI consists of collection testing via molecule.
  -- CD consists of releasing to Github and Ansible Galaxy

## Developement

### Setup

```shell
make install
```

## Test

To test the entire collection including linting:

```shell
cd donhector/workstation
make test
```

To test individual roles:

```shell
cd donhector/workstation/roles/<role>
make test
```

If you are only after linting, you can use the `make lint` target instead.

I personally recommend that you configure linting on file saving (ie use the official 'ansible' extension in VScode)

To run the role directly on the host (and not a docker test container):

```shell
cd donhector/workstation/roles/<role>
make run
```

## Releasing the collection

### Build

```shell
cd donhector/workstation
make build
```

### Publish

Set your Galaxy token in `donhector/workstation/.env` (See `donhector/workstation/.env.sample` for reference)

```shell
cd donhector/workstation
make publish
```

### Install

If you want to install the collection from the tarball to inspect its contents:

```shell
cd donhector/workstation
make install
```

This will install the collection in `donhector/workstation/collections`
