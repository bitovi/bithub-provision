# 1. bithub u grupi initconf (stvorit grupu initconf)
# 2. /etc/init/ group ownership => initconf
# 3. /etc/init mod je 775

group "initconf" do
  action :create
  members node[:bithub][:user]
  append true
end

group "rbenv" do
  action :create
  members node[:bithub][:user]
  append true
end

directory "/etc/init" do
  group "initconf"
  mode 00775
  action :create
end

directory "/var/log/bithub" do
  owner node[:bithub][:user]
  group node[:bithub][:group]
  mode 00744
  action :create
end

directory "/opt/rbenv/versions" do
  mode 00777
  recursive true
  action :create
end
