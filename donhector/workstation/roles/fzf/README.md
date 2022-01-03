fzf
=========

Install fzf, a command-line fuzzy finder

Requirements
------------

None

Role Variables
--------------

`fzf_version`: String. Version to install. Default: `1.6`
`fzf_dl_url`: String. Url to install the binary from.
`fzf_path`: String. Path to where the binary will be installed. Default: `/usr/local/bin/fzf`
`fzf_man_dl_url`: String. Url to the man page for fzf.
`fzf_man_path`: String. Path to where the man page will be installed. Default: `/usr/local/share/man/man1/fzf.1

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.fzf }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
