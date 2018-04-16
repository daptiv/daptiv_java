#
# Author:: Daptiv Engineering (<dl_teamengineering@daptiv.com>)
# Cookbook Name:: daptiv_java
# Recipe:: default
#
# Copyright (c) 2018 Changepoint
#
# All rights reserved - Do Not Redistribute
#
#
# Wrapper cookbook for the community Java cookbook

if platform?('windows')
  include_recipe 'daptiv_java::windows'
else
  include_recipe 'daptiv_java::linux'
end
