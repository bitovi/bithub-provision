template node[:bithub][:backend][:config] do
  source 'unicorn.rb.erb'
  mode '755'
end

file "/var/log/unicorn.log" do
  owner node[:bithub][:user]
  group node[:bithub][:group]
  mode "0666"
  action :create
end
