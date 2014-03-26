#
# Author:: Daptiv Engineering (<dl_teamengineering@daptiv.com>)
# Cookbook Name:: daptiv_java
# Recipe:: linux
#
# Copyright (c) 2014 Daptiv Solutions LLC.
# 
# All rights reserved - Do Not Redistribute
#
#
# Wrapper cookbook for the community Java cookbook

node.override['java']['jdk_version'] = '7'

include_recipe 'apt'
include_recipe 'java'
