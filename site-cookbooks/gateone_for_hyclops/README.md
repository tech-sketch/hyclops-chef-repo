Description
===========

This cookbook is the cookbook for GateOne - Zabbix(HyClops for Zabbix) collaboration settings.
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

### Zabbix Server IP address/hostname

Please set Zabbix Server IP address/hostname.

* default['zabbix']['server']
    * Please change settings if GateOne is running on the other from Zabbix Server.
    * (default settings)'node[:ipaddress]'

Usage
=====

Set run_list "recipe[gateone_for_hyclops::init_gateone]".

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

