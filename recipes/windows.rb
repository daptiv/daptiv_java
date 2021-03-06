#
# Author:: Daptiv Engineering (<dl_teamengineering@daptiv.com>)
# Cookbook Name:: daptiv_java
# Recipe:: windows
#
# Copyright (c) 2018 Changepoint
#
# All rights reserved - Do Not Redistribute
#
#
# Wrapper cookbook for the community Java cookbook

node.override['java']['jdk_version'] = '7'
node.override['java']['java_home'] = 'C:\Program Files\Java\jdk1.7.0_21'
node.override['java']['windows']['url'] =
  'http://artrepo.daptiv.com:8081/artifactory/installs/vagrant/jdk-7u21-windows-x64.exe'
node.override['java']['windows']['package_name'] =
  'Java SE Development Kit 7 Update 21 (64-bit)'
node.override['java']['windows']['checksum'] =
  'fe70ca8ea1a86f6950a2bca966733f274d00a8ed23ac54457c5fbe76833f71e9'

# Use setx because the Chef env resource requires
# a re-login before being available
execute 'set_java_home' do
  command "setx -m JAVA_HOME \"#{node['java']['java_home']}\""
  only_if { ENV['JAVA_HOME'] != node['java']['java_home'] }
end

ruby_block 'set_java_home_cur_process' do
  block do
    ENV['JAVA_HOME'] = node['java']['java_home']
  end
end

include_recipe 'java'
