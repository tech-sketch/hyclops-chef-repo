#
# Cookbook Name:: gateone_for_hyclops
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "gateone::install_gateone"
include_recipe "gateone_for_hyclops::init_gateone"
include_recipe "gateone::startup_gateone"

