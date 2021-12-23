sudoers
=========

Setup passwordless sudo for the `{{ ansible_user_id }}` user

Requirements
------------

None

Role Variables
--------------

None

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.sudoers }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
