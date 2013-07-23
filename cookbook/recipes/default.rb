#
# Cookbook Name:: bithub
# Recipe:: default
#
# Copyright (C) 2013 Nikica Jokic
# 
# All rights reserved - Do Not Redistribute

group node[:bithub][:user]

user node[:bithub][:user] do
  group node[:bithub][:group]
  system true
  shell "/bin/bash"
end

include_recipe "bithub::database"
include_recipe "bithub::webserver"
include_recipe "bithub::broker"
include_recipe "bithub::pls"
include_recipe "bithub::tools"
