#
# Cookbook Name:: postfix-redis
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


include_recipe 'postfix-redis::postfix-server'
include_recipe 'postfix-redis::postfix-virtual'
include_recipe 'postfix-redis::postfix-forward'
include_recipe 'postfix-redis::postfix-user'
include_recipe 'postfix-redis::redis'
include_recipe 'postfix-redis::python'
