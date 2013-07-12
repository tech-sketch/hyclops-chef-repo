Description
===========

This cookbook is the cookbook for Zabbix Agent install from official package repository.

Zabbix official package repository: https://repo.zabbix.com

Requirements
============

Supported OS:

* CentOS5-6
* Ubuntu11-13
* Amazon Linux

Tested Chef version: 11.4.4

Dependent cookbooks:

* yum


Attributes
==========

### Settings about Zabbix

* default[:zabbix][:server]
    * Set Zabbix Server IP address/hostname ( This settings is reflected to zabbix_agentd.conf)
    * (default settings)""
* default[:zabbix][:agent][:install]
    * Set Zabbix Agent install flag. (true: execute install, false: not execute install)
    * (default settings)true
* default[:zabbix][:agent][:upgrade]
    * Set Zabbix Agent upgrade flag.(true: execute upgrade, false: not execute upgrade)
    * (default settings)false
* default[:zabbix][:agent][:yum][:version]
    * Set Zabbix Agent version(yum). If you set none, the latest version is installed.
    * (default settings)""
default[:zabbix][:agent][:apt][:version]
    * Set Zabbix Agent version(apt). If you set none, the latest version is installed.
    * (default settings)""


Usage
=====

Set run_list the following recipe.

* "recipe[zabbix_agent]"

If you want to install only zabbix-sender package, set the following.

* "recipe[zabbix_agent::install_zabbix_sender]"

License
======

Copyright 2013 TIS Inc. HyClops for Zabbix Team (hyclops@ml.tis.co.jp)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
