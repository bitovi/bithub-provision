default[:bithub][:user] = "bithub"
default[:bithub][:group] = "bithub"
default[:bithub][:name] = "bithub"
default[:bithub][:config] = "bithub.conf"
default[:bithub][:document_root] = "/vagrant/client"

# Webserver - nginx
default[:bithub][:webserver][:conf_file] = 'bithub.dev.conf'

# Broker - rabbitmq
default[:bithub][:broker][:host] = 'localhost'
default[:bithub][:broker][:username] = 'bithub'
default[:bithub][:broker][:password] = 'Ei7PhaaH'
default[:bithub][:broker][:vhost] = '/bithub'

# Database - postgresql
default[:bithub][:database][:host] = 'localhost'
default[:bithub][:database][:port] = '5432'
default[:bithub][:database][:username] = 'bithub'
default[:bithub][:database][:password] = 'negativ1Q'
default[:bithub][:database][:dbname] = 'bithub_development'

# PLs - ruby
default[:bithub][:pls][:ruby_version] = '1.9.3-p392'

# Apps
default[:bithub][:root_dir] = "/vagrant"

default[:bithub][:apps][:client][:dir] = "#{node[:bithub][:root_dir]}/client"
default[:bithub][:apps][:client][:repo] = "git@github.com:bitovi/bithub-client.git"

default[:bithub][:apps][:web][:dir] = "#{node[:bithub][:root_dir]}/web"
default[:bithub][:apps][:web][:repo] = "git@github.com:bitovi/bithub.git"

default[:bithub][:apps][:tagger][:dir] = "#{node[:bithub][:root_dir]}/tagger"
default[:bithub][:apps][:tagger][:repo] = "git@github.com:bitovi/bithub-tagger.git"

default[:bithub][:apps][:crawler][:dir] = "#{node[:bithub][:root_dir]}/crawler"
default[:bithub][:apps][:crawler][:repo] = "git@github.com:bitovi/bithub-crawler.git"

default[:bithub][:apps][:irc_bot][:dir] = "#{node[:bithub][:root_dir]}/irc-bot"
default[:bithub][:apps][:irc_bot][:repo] = "git@github.com:jupiterjs/irc-bot.git"
