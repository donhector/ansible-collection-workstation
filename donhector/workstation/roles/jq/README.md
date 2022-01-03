jq
=========

Install jq, the command-line JSON processor

Requirements
------------

None

Role Variables
--------------

`jq_version`: String. Version to install. Default: `1.6`
`jq_dl_url`: String. Url to install the binary from.
`jq_path`: String. Path to where the binary will be installed. Default: `/usr/local/bin/jq`
`jq_man_dl_url`: String. Url to the man page for jq.
`jq_man_path`: String. Path to where the man page will be installed. Default: `/usr/local/share/man/man1/jq.1

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.jq }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
