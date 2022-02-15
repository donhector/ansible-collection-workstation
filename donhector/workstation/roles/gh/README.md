gh
=========

Install gh, the Github cli tool

Requirements
------------

None

Role Variables
--------------

`gh_version`: Version to install

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.gh, gh_version: '8.3.0' }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
