include_recipe "postgresql"
include_recipe "postgresql::server"
include_recipe "database::postgresql"

node.set['postgresql']['version'] = '9.1'
node.set['postgresql']['config']['listen_addresses'] = '*'
node.set['postgresql']['pg_hba'] = [
  { :type => 'local' , :db => 'all' , :user => 'all' , :addr => nil            , :method => 'trust'} ,
  { :type => 'host'  , :db => 'all' , :user => 'all' , :addr => '127.0.0.1/32' , :method => 'trust'} ,
  { :type => 'host'  , :db => 'all' , :user => 'all' , :addr => '0.0.0.0/0'    , :method => 'md5'}
]

postgresql_connection_info = {
  :host => "localhost",
  :port => node['postgresql']['config']['port'],
  :username => 'postgres',
  :password => node['postgresql']['password']['postgres']
}

postgresql_database_user node['bithub']['database']['username'] do
  connection postgresql_connection_info
  password node['bithub']['database']['password']
  action :create
end
