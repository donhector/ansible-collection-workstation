# terraform

Install Terraform from Hashicorp

## Requirements

None

## Role Variables

| variable             | default        |
| -------------------- | -------------- |
| `terraform_version`  | 1.1.7          |
| `terraform_arch`     | amd64          |
| `terraform_bin_path` | /usr/local/bin |

## Dependencies

none

## Example Playbook

```yaml
- hosts: servers
  roles:
    - { role: donhector.terraform, terraform_version: "1.1.6" }
```

## License

MIT

## Author Information

github.com/donhector
