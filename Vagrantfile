# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  #config.vm.box = "ubuntu/trusty64"
  #config.vm.box = "hashicorp/precise32"
  config.vm.box = "ubuntu/trusty32"
  config.vm.network :private_network, ip: "10.0.0.100"

  config.vm.provider :virtualbox do |vb|
    #   # Use VBoxManage to customize the VM. For example to change memory:
    #vb.gui = true  
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "shell", path: "setup_local.sh"

  config.vm.synced_folder ".", "/vagrant", owner:"vagrant", group:"www-data", mount_options:["dmode=775", "fmode=664"]
end
