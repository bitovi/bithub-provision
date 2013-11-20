include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby node[:bithub][:langs][:ruby_version]
rbenv_gem "bundler" do
  ruby_version node[:bithub][:langs][:ruby_version] 
end
