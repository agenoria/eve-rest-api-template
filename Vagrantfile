# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  # forward the VM's (guest's) port 5000 to the host's port 5000
  config.vm.network "forwarded_port", guest: 5000, host: 5000
end
