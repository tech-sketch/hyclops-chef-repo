Overview
========

This Chef repository is released to install "HyClops for Zabbix" by chef-solo.

"HyClops for Zabbix" is Zabbix extension that provide some features to management Amazon EC2 and VMware vSphere on Zabbix.

HyClops for Zabbix is released under the GNU General Public License version2.

GitHub repository: https://github.com/tech-sketch/HyClops.git
Official Site: http://tech-sketch.github.io/hyclops

Cookbooks
==========

### opscode cookbooks

This chef repository is set some submodules.

- [python(Opscode cookbook)](https://github.com/opscode-cookbooks/python)
- [yum(Opscode cookbook)](https://github.com/opscode-cookbooks/yum)
- [build-essential(Opscode cookbook)](https://github.com/opscode-cookbooks/build-essential)


###  HyClops for Zabbix custom site-cookbooks

- gateone cookbook
- gateone_for_hyclops cookbook
- hyclops cookbook
- zabbix_for_hyclops cookbook
- zabbix_agent cookbook

Roles
=====

HyClops is consisted by three components.

- GateOne server
- HyClops server
- Zabbix server

This chef repo includes three role files for each components.

- gateone_server.rb
- hyclops_server.rb
- zabbix_server.rb

Usage
=====

### Download

    $ git clone https://github.com/tech-sketch/hyclops-chef-repo.git
    $ cd hyclops-chef-repo
    $ git submodule update --init

### Configuration

At first, please do settings at each cookbooks attributes.
Next, please set chef-solo execution environments.

For example(If you want to build HyClops on only one server.):

    * /etc/chef/chef.json
    {
        "run_list": [
            "role[gateone_server]",
            "role[hyclops_server]",
            "role[zabbix_server]"
        ]
    }

    * /etc/chef/solo.rb
    file_cache_path "/tmp/chef-solo"
    cookbook_path ["~/git/hyclops-chef-repo/cookbooks","~/git/hyclops-chef-repo/site-cookbooks"]
    role_path "~/git/hyclops-chef-repo/roles"

### Execute

Execute only chef-solo command.

    $ chef-solo -j /etc/chef/chef.json -c /etc/chef/solo.rb

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

