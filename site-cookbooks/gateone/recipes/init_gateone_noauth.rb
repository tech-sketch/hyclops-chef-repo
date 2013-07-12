### Initialize GateOne with noauth ###
execute "gateone init setup (no auth)" do
  command "cd /opt/gateone;./gateone.py"
  action :run
end
execute "gateone stop" do
  command "sleep 10;kill `cat /var/run/gateone.pid`"
  action :run
end
