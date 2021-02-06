# -*- mode: ruby -*-

# Required: vagrant plugin install vagrant-vbguest
# Runnnig: vagrant up

Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/bionic64"  
    # A request in localhost:8080 will be redirected to
    # port 80 in guest machine
    config.vm.network "forwarded_port", guest:80, host:8080
    
    # Not sync this folder (disabled:true)
    # This folder will be never be synced
    config.vm.synced_folder ".", "/home/vagrant/originalDirectoy", disabled: true

    # Shared folder between host and guest folder
    config.vm.synced_folder "./shared", "/home/vagrant/shared"

    # When machine is provisioned, we run scripts/cagrantProvision.sh
    config.vm.provision "shell", path: "scripts/vagrantProvision.sh"

end
