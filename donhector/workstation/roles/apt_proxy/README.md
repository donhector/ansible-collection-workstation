apt_proxy
=========

Configure proxy settings for APT

Requirements
------------

None

Role Variables
--------------

`apt_proxy__filename` Filename to be used to store the proxy configuration
`apt_proxy__http_url`: HTTP proxy URL. Default is the remote value or empty
`apt_proxy__https_url`: HTTPS proxy URL. Default is the remote value or empty
`apt_proxy__ftp_url`: FTP proxy URL. Default is the remote value or empty

By default the role takes proxy settings found in the remote host and will use those in `apt_proxy__filename`.
If the user does not specify any custom values in those url variables above, then the role will check if proxy settings are found in the remote host environment. If they are not found, and the user did not specify custom ones, then the role won't create the `apt_proxy__filename`

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
        - role: donhector.apt_proxy
          vars:
              apt_proxy__http_url: http://user:pass@server.com:3128
              apt_proxy__https_url: https://user:pass@server.com:3128
              apt_proxy__ftp_url: ftp://user:pass@server.com:3128
```

License
-------

MIT

Author Information
------------------

github.com/donhector
