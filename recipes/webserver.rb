include_recipe "nginx"

node.set['nginx']['sendfile'] = 'off'

template "#{node[:nginx][:dir]}/sites-available/#{node[:bithub][:webserver][:conf_file]}" do
  source "nginx.conf.erb"
  notifies :restart, 'service[nginx]'
end

nginx_site "bithub.dev.conf" do
  enable true
end

nginx_site "default" do
  enable false
end
