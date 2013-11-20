# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.hostname = "bithub-dev"
  config.vm.network :private_network, ip: "192.168.99.33"
  
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest
  
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'bithub'
    chef.json = {
      postgresql: { password: { postgres: "iloverandompasswordsbutthiswilldo" } },
      build_essential: { compiletime: true }
    }
  end
end
