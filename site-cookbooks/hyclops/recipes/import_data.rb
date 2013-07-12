template "/tmp/hyclops/misc/import_data/globalmacros.xml" do
  source "globalmacros.xml.erb"
end

execute "import Zabbix template xml & set global scripts & set global macros(for Gateone)" do
  command "/tmp/hyclops/setup.py import -f #{node.zabbix.frontend_url} -u #{node.zabbix.login_username} -p #{node.zabbix.login_password}"
  action :run
end
