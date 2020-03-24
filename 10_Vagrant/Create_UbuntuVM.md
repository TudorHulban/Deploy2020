```vagrant
Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.box_check_update = false
  config.vm.network "private_network", type: "dhcp"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "2048"
    vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
  end
  config.vm.provision "docker"
end
```
