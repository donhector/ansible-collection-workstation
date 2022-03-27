fonts
=========

Install fonts

Requirements
------------

None

Role Variables
--------------

`fonts_packages`: list of font packages to install

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.fonts, fonts_packages: fonts-powerline }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
