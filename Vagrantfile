# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Box Settings
  config.vm.box = "ubuntu/trusty64"

  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 4
  end

  # Network Settings
  config.vm.network "private_network", ip: "192.168.33.44" 

  # Folder Settings
  config.vm.synced_folder ".", "/var/www/html" 

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
  config.vm.provision "shell", path: "bootstrap.sh"
end
