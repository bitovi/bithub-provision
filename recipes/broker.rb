include_recipe "rabbitmq"

rabbitmq_plugin "rabbitmq_management" do
  action :enable
end

rabbitmq_vhost node[:bithub][:broker][:vhost] do
  action :add
end

rabbitmq_user node[:bithub][:broker][:username] do
  password node[:bithub][:broker][:password]
  action :add
end

rabbitmq_user node[:bithub][:broker][:username] do
  vhost '/'
  permissions ".* .* .*"
  action :clear_permissions
end

rabbitmq_user node[:bithub][:broker][:username] do
  vhost node[:bithub][:broker][:vhost]
  permissions ".* .* .*"
  action :set_permissions
end

rabbitmq_user node[:bithub][:broker][:username] do
  tag "monitoring"
  action :set_tags
end
