### Initialize GateOne ###
execute "gateone init setup" do
  command "cd /opt/gateone;./gateone.py --auth=api --origins=\"http://#{node.zabbix.server}\" &"
  action :run
end
execute "gateone stop" do
  command "sleep 10;kill `cat /var/run/gateone.pid`"
  action :run
end
execute "gateone generate api key" do
  command "/opt/gateone/gateone.py --new_api_key"
  action :run
end
