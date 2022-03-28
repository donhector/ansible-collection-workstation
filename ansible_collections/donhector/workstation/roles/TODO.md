#TODO

## Testing

Test whole collection

## Structure

Completions / dotfiles

## PATH

- name: Add another bin dir to system-wide $PATH.
  when: ansible_env.PATH is not search(my_custom_path_var)
  copy:
    dest: /etc/profile.d/custom-path.sh
    content: 'PATH=$PATH:{{ my_custom_path_var }}'

## Roles

zsh - antigen (with ohmyzsh + plugins)
bash - ohmybash
docker
docker-compose
podman-compose??

### Enhancements

- use community git module to obtain latest release of software.
  ie. Role defaults to latest git release, but allow user to specify one

- To allow more efficient role testing, we can create one workflow per role,
  that triggers only when files in the role folder are modified.

  on:
  pull_request:
  paths: - 'donhector/workstation/roles/role_name/\*\*' - '.github/workflows/role_name.yml'

  See https://ericsysmin.com/2020/04/30/ansible-collections-role-tests-with-molecule/ for the idea
