fd
=========

Install fd, a simple, fast and user-friendly alternative to 'find'

Requirements
------------

None

Role Variables
--------------

`fd_version`: Version to install

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.fd, fd_version: '8.3.0' }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
