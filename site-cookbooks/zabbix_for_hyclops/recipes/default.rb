#
# Cookbook Name:: zabbix_for_hyclops
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "hyclops::install_package"
include_recipe "hyclops::install_python_package"
include_recipe "hyclops::install_hyclops_module"
include_recipe "zabbix_for_hyclops::replace_frontend"
include_recipe "zabbix_for_hyclops::script_copy"
