Description
===========

This cookbook is the cookbook for HyClops for Zabbix - Zabbix collaboration settings.
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

Attributes
==========

### Settings about Zabbix Server

* default['zabbix']['version']
    * Set Zabbix version. Supported only 2.0.* now.
    * (default settings)'2.0.6'
* default['zabbix']['frontend_dir']
    * Set Zabbix frontend directory.
    * (default settings)'/usr/share/zabbix'
* default['zabbix']['process_owner']
    * Set Zabbix Server process owener user name.
    * (default settings)'zabbix'
* default['zabbix']['process_group']
    * Set Zabbix Server process owner group name.
    * (default settings)'zabbix'
* default['zabbix']['externalscripts_dir']
    * Set Zabbix externalscripts directory path.
    * (default settings)'/usr/lib/zabbix/externalscripts'

Usage
=====

Set run_list the following recipe.

* "recipe[zabbix_for_hyclops::replace_frontend]"
* "recipe[zabbix_for_hyclops::script_copy]"

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

