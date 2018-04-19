Description
===========

This cookbook is the cookbook for HyClops for Zabbix installation.
"HyClops for Zabbix" is Zabbix extension that provide some features to management Amazon EC2 and VMware vSphere on Zabbix.

GitHub repository: https://github.com/tech-sketch/HyClops.git
Official Site: http://tech-sketch.github.io/hyclops

Requirements
============

Supported OS:

* CentOS5-6
* Ubuntu11-13
* Amazon Linux

Tested Chef version: 11.4.4

Dependent cookbooks:

* python
* yum
* build-essential

Attributes
==========

### Settings about HyClops Server

* default['hyclops']['source_url']
    * Set version number which you want to install.
    * (default settings)'https://github.com/tech-sketch/hyclops/archive/0.1.0.tar.gz'
* default['hyclops']['install_dir']
    * Set hyclops install base directory path.
    * (default settings)'/opt/hyclops'
* default['hyclops']['server']
    * Set hyclops server IP address/hostname.
    * (default settings)'127.0.0.1'
* default['hyclops']['port']
    * Set hyclops listen port number.
    * (default settings)'5555'
* default['hyclops']['log_level']
    * Set log level.(DEBUG, INFORMATION, WARNING, ERROR)
    *(default settings)'WARNING'
* default['hyclops']['log_file']
    * Set log file path. This log file must be given write permission from hyclops & httpd user.
    * (default settings)'/opt/hyclops/logs/hyclops_server.log'

### Settings about Zabbix Server

* default['zabbix']['server']
    * Set Zabbix Server IP address/hostname.
    * (default settings)'node[:ipaddress]'
* default['zabbix']['port']
    * Set Zabbix Server listen port number.
    * (default settings)'10051'
* default['zabbix']['frontend_url']
    * Set Zabbix Frontend URL. This setting is used by accessing Zabbix API.
    * (default settings)"http://#{default['zabbix']['server']}/zabbix"
* default['zabbix']['login_username']
    * Set Zabbix API username.
    * (default settings)'admin'
* default['zabbix']['login_password']
    * Set Zabbix API password.
    * (default settings)'zabbix'
* default['zabbix']['sender_path']
    * Set Zabbix sender binary file path.
    * (default settings)'/usr/bin/zabbix_sender'

### Settings about GateOne

* default['gateone']['url']
    * Set GateOne server url. If GateOne is running on the other from Zabbix Server, please change this setting.
    * (default settings)"https://#{default['zabbix']['server']}"

### Settings about ZeroMQ

Set ZeroMQ package repository URL for CentOS,RHEL,AmazonLinux

* version 5 url: http://download.opensuse.org/repositories/home:/fengshuo:/zeromq/CentOS_CentOS-5/home:fengshuo:zeromq.repo
* version 6 url: http://download.opensuse.org/repositories/home:/fengshuo:/zeromq/CentOS_CentOS-6/home:fengshuo:zeromq.repo 

* default['zeromq']['repo_url']
    * (default settings)'http://download.opensuse.org/repositories/home:/fengshuo:/zeromq/CentOS_CentOS-6/home:fengshuo:zeromq.repo'

Usage
=====

Set run_list the following recipe.

* "recipe[hyclops::install_package]"
* "recipe[hyclops::install_python_package]"
* "recipe[hyclops::install_hyclops_module]"
* "recipe[hyclops::copy_init_file]",
* "recipe[hyclops::startup_hyclops]"
* "recipe[hyclops::import_data]"
* "recipe[hyclops::set_cron]"

License
======

Copyright 2013 TIS Inc. HyClops for Zabbix Team

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

