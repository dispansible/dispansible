# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.define 'default' do |machine|

    machine.vm.box = 'ubuntu/trusty64'

    # Install ansible on the target VM
    # TODO: could switch to scripts/bootstrap_ubuntu.sh
    machine.vm.provision :shell, :inline => <<EOS
set -e
if ! command -V ansible-playbook >/dev/null 2>/dev/null; then
  sudo apt-get update -qq
  apt-get install -y -qq software-properties-common python-software-properties
  add-apt-repository ppa:ansible/ansible -y
  sudo apt-get update -qq
  sudo apt-get install -qq ansible
fi
EOS

    machine.vm.provision "shell" do |s|
      dispansible_settings_home = '/vagrant/.travis/linux' # or "/vagrant/settings"
      s.privileged = false
      s.inline = "cd /vagrant && DISPANSIBLE_SETTINGS_DIR=#{dispansible_settings_home} PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true GALAXY=no ./dispansible $1"
      #s.args = "clojure_tools"
    end
  end

end
