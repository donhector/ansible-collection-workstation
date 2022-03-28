yq
=========

Install `yq`, the portable command-line YAML processor.

Requirements
------------

None

Role Variables
--------------

- `yq_version`: The version to install. Default value: `4.16.2`
- `yq_path`: The path to drop the binary. Default value: `/usr/local/bin/yq`

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.yq, yq_version: '4.16.2' }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
