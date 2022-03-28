common
=========

Install common packages

Requirements
------------

None

Role Variables
--------------

`common_packages`: list of common packages to install from APT

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.common, common_packages: git }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
