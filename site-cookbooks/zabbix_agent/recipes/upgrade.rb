if node.zabbix.agent.upgrade
  package "zabbix-agent" do
    options "--enablerepo=zabbix" 
    action :upgrade
  end
end
