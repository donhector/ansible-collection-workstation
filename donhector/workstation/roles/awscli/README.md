awscli
=========

Install aws cli tool

Requirements
------------

None

Role Variables
--------------

- `awscli_download_url`: url to download aws-cli from

- `awscli_upgrade`: Force the upgrade of a pre-existing awscli installation. Default is `true`

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.awscli }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
