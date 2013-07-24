bithub-provision
================

Make a root Bithub folder, eg.
```
mkdir ~/projects/bithub
```

Clone the bithub-provision repo inside your root bithub folder, eg.
```
git clone git@github.com:bitovi/bithub-provision.git ~/projects/bithub/provision
```

Copy the Vagrantfile from the bithub-provision root folder to the bithub root folder, eg.
```
cp ~/projects/bithub/provision/Vagrantfile ~/projects/bithub/Vagrantfile
```

Install Vagrant : http://downloads.vagrantup.com

Install Vagrant Omnibus plugin:
```
vagrant plugin install vagrant-omnibus
```

Install Vagrant Berks plugin:
```
vagrant plugin install vagrant-berkshelf
```

Boot the vagrant virtual machine (from the bithub root folder), eg.
```
cd ~projects/bithub
vagrant up
```

Author:: Nikica Jokic (<neektza@gmail.com>)
