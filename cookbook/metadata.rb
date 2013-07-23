name             'bithub'
maintainer       'Nikica Jokic'
maintainer_email 'neektza@gmail.com'
license          'All rights reserved'
description      'Installs/Configures bithub'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "apt", "<= 1.10.0"
depends "database"
depends "postgresql"
depends "nginx"
depends "rabbitmq"
depends "rbenv"
depends "vim"
