default['hyclops']['source_url'] = 'https://github.com/tech-sketch/hyclops/archive/0.1.0.tar.gz'
default['hyclops']['install_dir'] = '/opt/hyclops'
default['hyclops']['server'] = '127.0.0.1'
default['hyclops']['port'] = '5555'
default['hyclops']['log_level'] = 'WARNING'
default['hyclops']['log_file'] = '/opt/hyclops/logs/hyclops_server.log'

default['zabbix']['server'] = node[:ipaddress]  # Used at Zabbix Server & GateOne Server Recipe.
default['zabbix']['port'] = '10051'
default['zabbix']['frontend_url'] = "http://#{default['zabbix']['server']}/zabbix"
default['zabbix']['login_username'] = 'admin'
default['zabbix']['login_password'] = 'zabbix'
default['zabbix']['sender_path'] = '/usr/bin/zabbix_sender'

default['gateone']['url'] = "https://#{default['zabbix']['server']}"

# Set ZeroMQ package repository URL for CentOS,RHEL,AmazonLinux
# version 5 url: http://download.opensuse.org/repositories/home:/fengshuo:/zeromq/CentOS_CentOS-5/home:fengshuo:zeromq.repo
# version 6 url: http://download.opensuse.org/repositories/home:/fengshuo:/zeromq/CentOS_CentOS-6/home:fengshuo:zeromq.repo 
default['zeromq']['repo_url'] = 'http://download.opensuse.org/repositories/home:/fengshuo:/zeromq/CentOS_CentOS-6/home:fengshuo:zeromq.repo'
