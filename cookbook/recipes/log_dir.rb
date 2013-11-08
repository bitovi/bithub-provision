directory "/var/log/bithub" do
  owner node[:bithub][:user]
  group node[:bithub][:group]
  mode 00744
  action :create
end
