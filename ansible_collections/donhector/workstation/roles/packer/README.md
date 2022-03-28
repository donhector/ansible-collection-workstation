# packer

Install Hashicorp Packer

## Requirements

None

## Role Variables

| variable          | default        |
| ----------------- | -------------- |
| `packer_version`  | 1.8.0          |
| `packer_arch`     | amd64          |
| `packer_bin_path` | /usr/local/bin |

## Dependencies

none

## Example Playbook

```yaml
- hosts: servers
  roles:
    - { role: donhector.packer, packer_version: "1.7.0" }
```

## License

MIT

## Author Information

github.com/donhector
