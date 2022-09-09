# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # load de centos7 box from vagrant cloud
    config.vm.box = "centos/7"
    config.vm.network "private_network", ip: "192.168.50.10"
     #change the value of the SSH configuration file, then restart the ssh service
    config.vm.provision "shell", inline: <<-SHELL
     sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
     sudo systemctl restart sshd
     SHELL
  end
  