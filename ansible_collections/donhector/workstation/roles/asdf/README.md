asdf
=========

Install [asdf](https://github.com/asdf-vm/asdf)

Requirements
------------

None

Role Variables
--------------

| Variable                 | Description                                                                       | Default                                                                                                                                              |   |   |   |   |   |   |
|--------------------------|-----------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|---|---|---|---|---|---|
| asdf_version             | asdf version to install                                                           | v0.9.0                                                                                                                                               |   |   |   |   |   |   |
| asdf_legacy_version_file | enable compatibility with version files                                           | yes                                                                                                                                                  |   |   |   |   |   |   |
| asdf_apt_global_deps     | list of common apt packages to install                                            |  ["unzip", "git", "curl", "autoconf", "automake", "gcc", "g++", "make", "patch", "pkg-config", "binutils", "libtool", "bison", "libreadline-dev"]    |   |   |   |   |   |   |
| asdf_yum_global_deps     | list of common yum packages to install                                            |  ["unzip", "git", "curl", "autoconf", "automake", "gcc", "gcc-c++", "make", "patch", "pkgconfig", "binutils", "libtool", "bison", "readline-devel"]  |   |   |   |   |   |   |
| asdf_plugins             | list of plugins to install along with their dependencies and application versions | ""                                                                                                                                                   |   |   |   |   |   |   |

Here's an advanced usage of `asdf_plugins` to install several versions of python, nodejs, golang and ruby

```yaml
asdf_plugins:

  - name: "python"
    repository: "https://github.com/danhper/asdf-python"
    versions:
      - 3.10.1
      - 2.7.18
    delete_versions: []
    global: 3.10.1
    apt_deps: ["make", "build-essential", "libssl-dev", "zlib1g-dev", "libbz2-dev",
               "libreadline-dev", "libsqlite3-dev", "wget", "curl", "llvm", "libncursesw5-dev",
               "xz-utils", "tk-dev", "libxml2-dev", "libxmlsec1-dev", "libffi-dev", "liblzma-dev"]
    yum_deps: ["gcc", "zlib-devel", "bzip2", "bzip2-devel", "readline-devel", "sqlite",
                       "sqlite-devel", "openssl-devel", "tk-devel", "libffi-devel", "xz-devel"]

  - name: "golang"
    repository: "https://github.com/kennyp/asdf-golang"
    versions:
      - 1.17.5
    delete_versions: []
    global: 1.17.5
    apt_deps: ["coreutils", "curl"]
    yum_deps: ["coreutils", "curl"]

  - name: "ruby"
    repository: "https://github.com/asdf-vm/asdf-ruby"
    versions:
      - 3.0.3
      - 2.7.5
    delete_versions: []
    global: 3.0.3
    apt_deps:  ["autoconf", "bison", "build-essential", "libssl-dev", "libyaml-dev",
                "libreadline6-dev", "zlib1g-dev", "libncurses5-dev", "libffi-dev",
                "libgdbm6", "libgdbm-dev", "libdb-dev"]
    yum_deps: ["gcc-6", "bzip2", "openssl-devel", "libyaml-devel", "libffi-devel",
               "readline-devel", "zlib-devel", "gdbm-devel", "ncurses-devel"]

  - name: "nodejs"
    repository: "https://github.com/asdf-vm/asdf-nodejs"
    versions:
      - 16.13.1
      - 17.2.0
    delete_versions: []
    global: 16.13.1
    apt_deps: ["gpg", "dirmngr", "curl", "gawk", "gpg-agent"]
    yum_deps: ["gpg", "perl-Digest-SHA", "gnupg2"]
```

Dependencies
------------

I keep all the files that needs sourcing by the shell in their respective directories. This way I keep
my `.bashrc`, `.zshrc`, etc... files clean.

I use the following approach:

`~/.shellrc.d/` -> Keeps any files that needs to be sourced by all shells (ie by bash and zsh)
`~/.bashrc.d/` -> Keeps any files that needs to be sourced only when using bash as your shell
`~/.zshrc.d/` -> Keeps any files that needs to be sourced only when using zsh as your shell

Then in `~/.bashrc` I use a loop to source all the files in `~/.shellrc.d/` and `~/.bashrc.d/` (in that order)
Then in `~/.zshrc` I use a loop to source all the files in `~/.shellrc.d/` and `~/.zshrc.d/` (in that order)

This role will drop the files that needs to be sourced (ie `asdf.sh`, `asd_completion.bash` and `asd_completion.zsh` )
to the appropriate directories above.

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.asdf }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
