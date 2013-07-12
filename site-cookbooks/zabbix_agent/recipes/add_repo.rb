case node[:platform]
when "ubuntu","debian"
  if node[:platform] == "ubuntu"
    package_url = "http://repo.zabbix.com/zabbix/2.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_2.0-1lucid_all.deb"
    package_name = "zabbix-release_2.0-1lucid_all.deb"
  elsif node[:platform] == "debian"
    package_url = "http://repo.zabbix.com/zabbix/2.0/debian/pool/main/z/zabbix-release/zabbix-release_2.0-1squeeze_all.deb"
    package_name = "zabbix-release_2.0-1squeeze_all.deb"
  end

  execute "get zabbix-release package" do
    command "wget #{package_url}"
    action :run
  end
  execute "zabbix-release package install" do
    command "dpkg -i #{package_name}"
    action :run
  end
  execute "update repository" do
    command "apt-get update"
    action :run
  end
when "centos", "redhat", "amazon"
  execute "zabbix-release package install" do
     command "rpm -ivh --replacepkgs http://repo.zabbix.com/zabbix/2.0/rhel/6/x86_64/zabbix-release-2.0-1.el6.noarch.rpm"
     action :run
  end
end
