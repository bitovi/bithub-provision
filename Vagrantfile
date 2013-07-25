# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.hostname = "bithub-dev"
  config.vm.network :public_network
  config.vm.network :private_network, ip: "192.168.99.1"
  
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest
  
  config.vm.provision :chef_solo do |chef|
    chef.json = {
      postgresql: {
        password: { postgres: "iloverandompasswordsbutthiswilldo" }
      }
    }
    chef.add_recipe 'bithub'
  end
end
