#
# Cookbook Name:: bithub
# Recipe:: default
#
# Copyright (C) 2013 Bitovi
# 
# All rights reserved - Do Not Redistribute

group node[:bithub][:group]

user node[:bithub][:user] do
  action :create
  group node[:bithub][:group]
  home "/home/#{node[:bithub][:user]}"
  shell "/bin/bash"
  system true
  supports :manage_home => true
end

include_recipe "bithub::locale"
include_recipe "bithub::database"

include_recipe "bithub::libs"
include_recipe "bithub::langs"
include_recipe "bithub::tools"

include_recipe "bithub::webserver"
include_recipe "bithub::broker"
include_recipe "bithub::unicorn"

include_recipe "bithub::groups_perms"
