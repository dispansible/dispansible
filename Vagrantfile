# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end


  config.vm.define 'trusty' do |machine|
    machine.vm.box = 'ubuntu/trusty64'
  end
  config.vm.define 'xenial' do |machine|
    machine.vm.box = 'ubuntu/xenial64'
  end


  # Install ansible on the target VM
  config.vm.provision :shell, path: "./scripts/bootstrap_ubuntu.sh" do |s|
    s.privileged = true
  end 

  # Execute dispansible from the target VM
  # Note: for now, assume that ansible-galaxy was already executed locally (to be improved...)
  config.vm.provision "shell" do |s|
      dispansible_settings_home = '/vagrant/tests/vagrant' # or "/vagrant/settings" when fully covered...
      environment_vars = "DISPANSIBLE_SETTINGS_DIR=#{dispansible_settings_home}"
      #environment_vars += " ANSIBLE_KEEP_REMOTE_FILES=1" # ONLY IN DEBUGGING MODE...
      environment_vars += " DISPANSIBLE_GALAXY=no"
      environment_vars += " PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true"
      s.privileged = false
#      s.inline = "cd /vagrant && DISPANSIBLE_SETTINGS_DIR=#{dispansible_settings_home} PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true DISPANSIBLE_GALAXY=no ./dispansible $1"
      s.inline = "cd /vagrant && #{environment_vars} ./dispansible $1"
      s.args = "vagrant"
  end

end
