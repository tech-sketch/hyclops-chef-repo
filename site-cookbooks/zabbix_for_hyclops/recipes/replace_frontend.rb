execute "replace frontend" do
  if /^(2.0|2.2)/ =~ node.zabbix.version
    command "/tmp/hyclops/setup.py replace -d #{node.zabbix.frontend_dir} --zabbix-version=#{$&}"
      action :run
  else
    p "Not supported version.(Supported only 2.0 or 2.2)"
  end
end
