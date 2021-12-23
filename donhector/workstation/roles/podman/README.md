podman
=========

Install `podman` and friends (ie: `buildah` and `skopeo`) from [Kubic repo](https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/)

The installer in older versions of `podman` (prior to 3.4.0) was not very smart and you had to manually adjust few things for a nice out of the box experience.

For example, in WSL2 (Windows Subsystem for Linux) where `systemd` is not running, you had to set these values in `/etc/containers/containers.conf` or `~/.config/containers/containers.conf`

``` toml
cgroup_manager = "cgroupfs"
events_logger = "file"
```

Additionally, you likely had to manually set uid and guid ranges in `/etc/subuid` and `/etc/subguid` with:

```shell
sudo touch /etc/{subgid,subuid}
sudo usermod --add-subuids 100000-165535 --add-subgids 100000-165535 ${USER}
```

Luckily for us, that's no longer the case and this role relies on the better out of the box experience of the recent versions hosted in the Kubic repo.

You can see what settings `podman` is using with:

```shell
podman info
```

NOTE: Rootless containers heavily rely on `cgroups v2` being enabled on your host for enforcing resource limits.

For WLS2, enabling `cgroups v2` is [not yet possible](https://github.com/microsoft/WSL/issues/6662) due to several decisions by Microsoft (ie. lack of systemd, running their own custom kernel)

References:
- [https://rootlesscontaine.rs/getting-started/podman/](https://rootlesscontaine.rs/getting-started/podman/)
- [https://www.vultr.com/docs/how-to-install-and-use-podman-on-ubuntu-20-04](https://www.vultr.com/docs/how-to-install-and-use-podman-on-ubuntu-20-04)
- [https://github.com/containers/podman/blob/main/docs/tutorials/rootless_tutorial.md](https://github.com/containers/podman/blob/main/docs/tutorials/rootless_tutorial.md) (not very updated)
- [https://sleeplessbeastie.eu/2021/09/10/how-to-enable-control-group-v2/](https://sleeplessbeastie.eu/2021/09/10/how-to-enable-control-group-v2/)

Requirements
------------

None

Role Variables
--------------

`podman_packages`: list of dictionaries that represent the packages to install and their state. The state property is optional and defaults to `present`

For example:

```yaml
podman_packages:
  - { name: podman, state: present }
  - { name: buildah, state: present }
  - { name: skopeo, state: present }
```

If you need to upgrade a package to the latest version available, use:

```yml
  - { name: <package_name>, state: latest }
```

If you need a specific version, use:

```yml
  - { name: <package_name>="100:3.4.2-1", state: present }
```

To list the available versions use:

```shell
sudo apt-cache madison <package_name>
```

Dependencies
------------

none

Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: donhector.podman }
```

License
-------

MIT

Author Information
------------------

github.com/donhector
