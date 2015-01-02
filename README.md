# expansible

Setup all the things on your workstation with Ansible.

**Warning:** this project is currently in *alpha* state.

## Credits

This project initially began as a fork of https://github.com/spencergibb/ansible-osx, but my approach rapidly diverged from [battleschool](https://github.com/spencergibb/battleschool). In this alpha/beta development phase, I don't aim at keeping this project merge-compatible with `battleschool` for the moment, but I'm open to discussion and keep that thing im mind, for sure! 

## About the name

Definition of `expansible` adjective: *That can expand or be expanded*. In other words, this tools is thought 

* to *expand* your easy computing **exp**erience thanks to **ansible** capabilities.
* to be easily *expanded* by its user community (see the [Contributing Guide](https://github.com/gildegoma/expansible/blob/master/CONTRIBUTING.md))

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
