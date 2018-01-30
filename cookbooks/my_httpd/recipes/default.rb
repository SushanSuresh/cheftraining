#
# Cookbook:: my_httpd
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'my_httpd::install'
include_recipe 'my_httpd::configure'
include_recipe 'my_httpd::start'
