# expansible [![Build Status](https://travis-ci.org/gildegoma/expansible.svg?branch=master)](https://travis-ci.org/gildegoma/expansible)

Setup all the things on your workstation with Ansible.

**Warning:** this project is currently in *alpha* state.

## Credits

This project initially began as a fork of https://github.com/spencergibb/ansible-osx, but my approach rapidly diverged from [battleschool](https://github.com/spencergibb/battleschool) design. During this alpha/beta development phase, I don't aim at keeping this project merge-compatible with `battleschool`, but I'm keeping this topic in mind, and would love to discuss it further.

## Dependencies

* [Ansible](http://ansible.com)
* The additional module `mac_pkg` is taken from Spencer Gibb's [battleschool](https://github.com/spencergibb/battleschool/blob/v0.4.0/share/library/mac_pkg)

## About the name

Definition of `expansible` adjective: *That can expand or be expanded*. In other words, this tools is thought 

* to *expand* your easy computing **exp**erience thanks to **ansible** capabilities.
* to be easily *expanded* by its user community (see the [Contributing Guide](https://github.com/gildegoma/expansible/blob/master/CONTRIBUTING.md)).

# Setup

* Install `ansible` (this step will be solved by GH-1 in a "near" future)
* Clone via `git` or Download as tarball this repository (or your own fork)
* Optionally update the [`ansible/group_vars/all`](https://github.com/gildegoma/expansible/blob/master/ansible/group_vars/all) file in order to select which software parts you want to install
* Execute `./expansible all`
* Enjoy a drink (while keeping an eye on your screen due to missing GH-2)

# Usage

## expansible tool

Install everything that is enabled in `ansible/group_vars/all`:

```bash
./expansible all
```

Install specific software:

```
./expansible vagrant,virtualbox
```

## rubber tool

*upcoming...*

# Similar Projects

* [Boxen](https://boxen.github.com/) (based on [Puppet](http://puppetlabs.com/))
* [Kitchenplan](http://kitchenplan.github.io/kitchenplan/) (based on [Chef](https://www.chef.io/))
* [battleschool](https://github.com/spencergibb/battleschool) (also based on Ansible and mainly focused on Mac support)

# 
