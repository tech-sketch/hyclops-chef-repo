case node.platform
when "centos","redhat","amazon"
  execute "init on gateone" do
    command "chkconfig gateone on"
    action :run
  end
  execute "start gateone" do
    command "service gateone start"
    action :run
  end
when "ubuntu","debian"
  execute "update-rc.d gateone" do
    command "update-rc.d gateone defaults"
    action :run
  end
  execute "start gateone" do
    command "service gateone start"
    action :run
  end
end

