include_recipe "zabbix_agent::add_repo"
if !system('which zabbix_sender')
  package "zabbix-sender" do
    case node.platform
    when "centos", "redhat", "amazon"
        version "#{node.zabbix.agent.yum.version}" if !node.zabbix.agent.yum.version.empty?
        action :install
    when "ubuntu", "debian"
        version "#{node.zabbix.agent.apt.version}" if !node.zabbix.agent.apt.version.empty?
        action :install
    end
  end
end
