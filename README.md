# dispansible [![Build Status](https://travis-ci.org/gildegoma/dispansible.svg?branch=master)](https://travis-ci.org/gildegoma/dispansible)

Setup all the things on your workstation with Ansible.

**Warning:** this project is currently in *alpha* state.

## Credits

This project initially began as a fork of https://github.com/spencergibb/ansible-osx, but my approach rapidly diverged from [battleschool](https://github.com/spencergibb/battleschool) design. During this alpha/beta development phase, I don't aim at keeping this project merge-compatible with `battleschool`, but I'm keeping this topic in mind, and would love to discuss it further.

## Dependencies

* [Ansible](http://ansible.com) 1.8+
* The additional module `mac_pkg` is taken from Spencer Gibb's [battleschool](https://github.com/spencergibb/battleschool/blob/v0.4.0/share/library/mac_pkg)
* Some Ansible core modules are overridden (which implies to use most recent version of Ansible):
  * [`apt_repository`](https://github.com/ansible/ansible-modules-core/pull/190) to be able to add PPA repository for LinuxMint
  * [`command`](https://github.com/ansible/ansible-modules-core/pull/513) to be able to add an idempotence condition for Vagrant plugins setup

## About the name

**WARNING:** This project is beeing [renamed](https://github.com/gildegoma/dispansible/issues/5) from `expansible` to `dispansible`.
Note that the http://expansible.io project is developed at https://github.com/rastaman/expansible.

Definition of `expansible` adjective: *That can expand or be expanded*. In other words, this tools is thought 

* to *expand* your easy computing **exp**erience thanks to **ansible** capabilities.
* to be easily *expanded* by its user community (see the [Contributing Guide](https://github.com/gildegoma/expansible/blob/master/CONTRIBUTING.md)).

## Setup

**WARNING:** During alpha phase the configuration file names and locations are unstable and this documentation might not be up to date.

* Install `ansible` (this [step should be integrated](https://github.com/gildegoma/dispansible/issues/1) into `dispansible` tool chain in a "near" future)
* Clone via `git` or Download as tarball this repository (or your own fork)
* Optionally update the following configuration files:
  * [`ansible/group_vars/all`](https://github.com/gildegoma/dispansible/blob/master/ansible/group_vars/all) to select which software parts you want to install
  * [`ansible/galaxy.yml`](https://github.com/gildegoma/dispansible/blob/master/ansible/galaxy.yml) to change the external roles that you are depending on.
  * [`settings.yml`](https://github.com/gildegoma/dispansible/blob/master/settings.yml)
* Execute `./dispansible all`
* Enjoy a drink (while keeping an eye on your screen, since [the sudo password could be prompted](https://github.com/gildegoma/dispansible/issues/2) during the setup procedure)

## Usage

### dispansible tool

Install everything that is enabled in `ansible/group_vars/all`:

```bash
./dispansible all
```

Install specific software:

```
./dispansible vagrant,virtualbox
```

### rubber tool

*upcoming...* (including a possible name change)

## Similar Projects

* [Boxen](https://boxen.github.com/) (based on [Puppet](http://puppetlabs.com/))
* [Kitchenplan](http://kitchenplan.github.io/kitchenplan/) (based on [Chef](https://www.chef.io/))
* [battleschool](https://github.com/spencergibb/battleschool) (also based on Ansible and mainly focused on Mac support)

