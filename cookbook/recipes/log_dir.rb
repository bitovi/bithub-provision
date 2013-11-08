directory "/var/log/bithub" do
  owner node[:bithub][:user]
  group node[:bithub][:group]
  mode 00644
  action :create
end
