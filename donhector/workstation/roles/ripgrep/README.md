ripgrep
=========

Install ripgrep. Ripgrep recursively searches directories for a regex pattern while respecting your gitignore

Requirements
------------

None

Role Variables
--------------

`ripgrep_version`: Version to install

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.ripgrep, ripgrep_version: '13.0.0' }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
