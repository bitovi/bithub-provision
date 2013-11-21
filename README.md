Bithub provisioning
===================

Make a root Bithub folder, eg.
```
mkdir ~/projects/bithub
```

Under it, clone all the subprojects:
```
git clone git@github.com:bitovi/bithub.git ~/projects/bithub/web
git clone git@github.com:bitovi/bithub-client.git ~/projects/bithub/client
git clone git@github.com:bitovi/bithub-tagger.git ~/projects/bithub/tagger
git clone git@github.com:bitovi/bithub-crawler.git ~/projects/bithub/crawler
git clone git@github.com:bitovi/bithub-provision.git ~/projects/bithub/provision
git clone git@github.com:bitovi/bithub-irc-bot.git ~/projects/bithub/irc-bot
git clone git@github.com:bitovi/bithub-xmpp-bot.git ~/projects/bithub/xmpp-bot
git clone git@github.com:bitovi/bithub-liveservice.git ~/projects/bithub/liveservice
```

Install Vagrant : http://downloads.vagrantup.com

Install Vagrant Omnibus plugin from the console:
```
vagrant plugin install vagrant-omnibus
```

Install Vagrant Berks plugin from the console:
```
vagrant plugin install vagrant-berkshelf
```

Copy the Vagrantfile from the provision folder to the bithub root folder, eg.
```
cp ~/projects/bithub/provision/Vagrantfile ~/projects/bithub/Vagrantfile
```

Boot the vagrant virtual machine (from the bithub root folder), eg.
```
cd ~projects/bithub
vagrant up
```

From the bithub root folder run:
```
vagrant ssh
```
to connect to the machine

Inside the machine:
```
cd /vagrant/web
bundle install
rbenv rehash
sudo su
su bithub
cap prod db:pull
foreman start
```




Author:: Nikica Jokic (<neektza@gmail.com>)
