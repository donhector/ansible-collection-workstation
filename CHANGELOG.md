### [1.1.3](https://github.com/donhector/ansible-collection-workstation/compare/v1.1.2...v1.1.3) (2022-03-28)


### :robot: Automation

* **deps:** pin ansible-lint to 5.4.0 ([514eddc](https://github.com/donhector/ansible-collection-workstation/commit/514eddc9c732d6f19ae153980ea5a24aa743bba3))
* **make:** add lint target in top level makefile ([efc322c](https://github.com/donhector/ansible-collection-workstation/commit/efc322c41fe7c2c7ec96ea9636a01ca0ae6a87c2))
* **make:** this is some stuff ([58769ba](https://github.com/donhector/ansible-collection-workstation/commit/58769bade143d49ba0e5dc8aa9bce33adb0e3962))
* **pipfile:** update pipfile.lock ([7f9e1f9](https://github.com/donhector/ansible-collection-workstation/commit/7f9e1f90a118dac1534739cd2151f2682cd0f509))
* **cd:** fix path to assets ([b99113d](https://github.com/donhector/ansible-collection-workstation/commit/b99113dd9c06cfaaab83969efdad269094808a1f))
* **deps:** bump ansible from 5.4.0 to 5.5.0 ([0e1fd1a](https://github.com/donhector/ansible-collection-workstation/commit/0e1fd1abc1a9593ae672a043e507f6cf82dabe4d))
* **test:** Some dummy commit ([cfef177](https://github.com/donhector/ansible-collection-workstation/commit/cfef177cd9d05c447084d3eaafc17dc9ad04b0af))


### :muscle: Improvements

* **molecule:** use ansible_collection top level folder ([0e8322f](https://github.com/donhector/ansible-collection-workstation/commit/0e8322f1398c950eb7aa0e869495f1c889909820))
* **poetry:** moved to poetry and make targets for ci/cd ([dab7dc1](https://github.com/donhector/ansible-collection-workstation/commit/dab7dc14e475cea5263617f783c7a8fd2eb0e168))

### [1.1.2](https://github.com/donhector/ansible-collection-workstation/compare/v1.1.1...v1.1.2) (2022-03-12)


### :eyes: Misc

* **readme:** updated Readme ([03d4d99](https://github.com/donhector/ansible-collection-workstation/commit/03d4d99f432fa8d55b60c0b15fe88fd45a807294))

### [1.1.1](https://github.com/donhector/ansible-collection-workstation/compare/v1.1.0...v1.1.1) (2022-03-12)


### :bug: Bug Fixes

* **playbook:** removed duplicate role ([a40f201](https://github.com/donhector/ansible-collection-workstation/commit/a40f2015ffd087a00a0ff7ffa0b9843f72ccdadb))


### :robot: Automation

* **deps:** bump actions/checkout from 2 to 3 ([92cc18c](https://github.com/donhector/ansible-collection-workstation/commit/92cc18c7ac367c922c07c59aa1f7ca2d3e4b6be9))
* **deps:** bump actions/setup-python from 2 to 3 ([f6d7c5a](https://github.com/donhector/ansible-collection-workstation/commit/f6d7c5a7ae1e73e6e9f76c6b20a5d1309746c8a2))
* **makefile:** add test target ([017d22d](https://github.com/donhector/ansible-collection-workstation/commit/017d22d5e0a1569448948c500689da3038e8c536))
* **makefile:** allow testing individual roles from top level make ([c293a7e](https://github.com/donhector/ansible-collection-workstation/commit/c293a7e0836082a1e57128f90147222de6911ffd))
* **makefile:** update targets ([561c490](https://github.com/donhector/ansible-collection-workstation/commit/561c490a976886f60c8951d17dea1afe09a7b5aa))
* **precommit:** update precommit hooks ([da5f3da](https://github.com/donhector/ansible-collection-workstation/commit/da5f3dadde4f6d619c915a721754f0e5ca570927))
* **delivery:** publish to Galaxy only on new releases ([d3a0ce2](https://github.com/donhector/ansible-collection-workstation/commit/d3a0ce2e176deeb2441eb2f3abcccc4458afb50f))
* **deps:** bump ansible from 5.3.0 to 5.4.0 ([0f637f8](https://github.com/donhector/ansible-collection-workstation/commit/0f637f8947f358e3b11511807baea3aba845e9f6))

## [1.1.0](https://github.com/donhector/ansible-collection-workstation/compare/v1.0.2...v1.1.0) (2022-02-23)


### :sparkles: Features

* **playbook:** add playbook to run all roles ([f80cc3c](https://github.com/donhector/ansible-collection-workstation/commit/f80cc3c3246215bb21ce42dcd6d109450a87456d))

### [1.0.2](https://github.com/donhector/ansible-collection-workstation/compare/v1.0.1...v1.0.2) (2022-02-22)


### :eyes: Misc

* **readme:** described local releasing to Galaxy ([39d957c](https://github.com/donhector/ansible-collection-workstation/commit/39d957cebfb40c1eab7bdd6be5401233cfc12bcc))

### [1.0.1](https://github.com/donhector/ansible-collection-workstation/compare/v1.0.0...v1.0.1) (2022-02-22)


### :eyes: Misc

* **readme:** update readme ([af6c144](https://github.com/donhector/ansible-collection-workstation/commit/af6c1444fcb04b3896a7935b24aa16f2ef56009a))

## 1.0.0 (2022-02-22)


### :robot: Automation

* **collection:** allow local build and publish ([8a3288a](https://github.com/donhector/ansible-collection-workstation/commit/8a3288a825375cbfeca6745901832453cef7cf90))
* **make:** refactor targets ([6abba20](https://github.com/donhector/ansible-collection-workstation/commit/6abba2085697afe5dab80c2a987c5bfd5ed399eb))
* **distros:** drop support for EOL distros ([93ba98c](https://github.com/donhector/ansible-collection-workstation/commit/93ba98cea128c840de8a77ab7c63b65649980635))
* **molecule:** ability to test collection with molecule ([f9e0126](https://github.com/donhector/ansible-collection-workstation/commit/f9e01260e39fde03f40e6cbf5ddde99206a0f1f1))
* **molecule:** drop support for eol distro ([5e55b26](https://github.com/donhector/ansible-collection-workstation/commit/5e55b26ec9e2801df4d75818719f5df9701c7043))


### :sparkles: Features

* **apt_proxy:** add apt_proxy role ([31f347a](https://github.com/donhector/ansible-collection-workstation/commit/31f347a4e37ffce92f8aecc792683e6c3d20f403))
* **asdf:** add asdf role ([83312bb](https://github.com/donhector/ansible-collection-workstation/commit/83312bb23ab5a091a47e743398acbc4fe3148fe1))
* **common:** add common role ([8bba86a](https://github.com/donhector/ansible-collection-workstation/commit/8bba86a418b5c3cd8ef4979e56c06ff1fe5a8032))
* **fonts:** add fonts role ([2e25103](https://github.com/donhector/ansible-collection-workstation/commit/2e251038ce7fd5250584a6d1a2ae0a86e8a2c808))


### :bug: Bug Fixes

* **fonts:** improve variable inclusion ([070a7e5](https://github.com/donhector/ansible-collection-workstation/commit/070a7e5903b6d466405b5a50fd706b871eab6af1))
* **initial:** initial files ([28c217e](https://github.com/donhector/ansible-collection-workstation/commit/28c217ecd128b4b8a5363f4aa2406504cef4705e))
