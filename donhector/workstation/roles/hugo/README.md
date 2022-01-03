hugo
=========

Install `hugo`, the world’s fastest framework for building websites.

Requirements
------------

None

Role Variables
--------------

`hugo_version`: String. Version to install. ie: `0.91.2`
`hugo_dl_url`: String. URL to download hugo from.
`hugo_path`: String. Path where the binary will be installed (ie: `/usr/local/bin/hugo`)

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.hugo }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
