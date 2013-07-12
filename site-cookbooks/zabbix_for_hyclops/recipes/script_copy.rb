execute "copy externalscripts" do
  command "cp /tmp/hyclops/misc/externalscripts/* #{node.zabbix.externalscripts_dir}"
  action :run
end

execute "chown externalscripts" do
  command "chown -R #{node.zabbix.process_owner}:#{node.zabbix.process_group} #{node.zabbix.externalscripts_dir}/*"
  action :run
end
execute "chmod externalscripts" do
  command "chmod -R 744 #{node.zabbix.externalscripts_dir}/*"
  action :run
end
