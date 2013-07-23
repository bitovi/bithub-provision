include_recipe "nginx"

template "#{node[:nginx][:dir]}/sites-available/#{node[:bithub][:webserver][:conf_file]}" do
  source "nginx.conf.erb"
  notifies :restart, 'service[nginx]'
end
