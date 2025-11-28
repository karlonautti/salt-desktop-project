# -*- mode: ruby -*-
# vi: set ft=ruby : 

$minion = <<MINION
sudo apt-get update
sudo apt-get -y install curl
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp
sudo curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources
sudo apt-get update
sudo apt-get -y install salt-minion
echo "master: 192.168.12.3" | sudo tee /etc/salt/minion
sudo systemctl enable salt-minion
sudo systemctl restart salt-minion
MINION

$master = <<MASTER
sudo apt-get update
sudo apt-get -y install curl
sudo curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp
sudo curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources
sudo apt-get update
sudo apt-get -y install salt-master
sudo systemctl enable salt-master
sudo systemctl restart salt-master
MASTER

Vagrant.configure("2") do |config|
	config.vm.box = "debian/bookworm64"
	config.vm.synced_folder ".", "/vagrant", disabled: true
	config.vm.synced_folder "shared/", "/home/vagrant/shared", create: true

	config.vm.define "dtmaster", primary: true do |dtmaster|
		dtmaster.vm.provision :shell, inline: $master
		dtmaster.vm.network "private_network", ip: "192.168.12.3"
		dtmaster.vm.hostname = "dtmaster"
	end

	config.vm.define "desktop001" do |desktop001|
		desktop001.vm.provision :shell, inline: $minion
		desktop001.vm.network "private_network", ip: "192.168.12.100"
		desktop001.vm.hostname = "desktop001"
	end
end
