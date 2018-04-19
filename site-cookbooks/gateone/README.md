Description
===========

This cookbook is the cookbook for GateOne installation.
GateOne is Web Terminal Emulator and SSH Client tool.

GateOne Official site: http://liftoffsoftware.com/Products/GateOne
GitHub repository: https://github.com/liftoff/GateOne

Requirements
============

Supported OS:

* CentOS5-6
* Ubuntu11-13
* Amazon Linux

Tested Chef version: 11.4.4

Attributes
==========

### Package URL settings

Please check the newest package url at [this page](https://github.com/liftoff/GateOne/downloads).

* default['gateone']['rpm_package_url']
    * Set gateone RPM package URL. 
    * (default settings)'https://github.com/downloads/liftoff/GateOne/gateone-1.1-1.noarch.rpm'
* default['tornado']['rpm_package_url']
    * Set tornado RPM package URL.
    * (default settings)'https://github.com/downloads/liftoff/GateOne/tornado-2.4-1.noarch.rpm'
* default['gateone']['deb_package_url']
    * Set gateone DEB package URL.
    * (default settings)'https://github.com/downloads/liftoff/GateOne/gateone_1.1-1_all.deb'
* default['tornado']['deb_package_url']
    * Set tornado DEB package URL.
    * 'https://github.com/downloads/liftoff/GateOne/python-tornado_2.4-1_all.deb'

Usage
=====

Set run_list "recipe[gateone::install_gateone]".

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
