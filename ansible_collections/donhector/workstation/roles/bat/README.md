bat
=========

Install bat, a cat(1) clone with wings.

Requirements
------------

None

Role Variables
--------------

`bat_version`: version to install

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.bat, bat_version: '0.18.3' }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
