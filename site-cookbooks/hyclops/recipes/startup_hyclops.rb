case node.platform
when "centos","redhat","amazon"
    execute "init on hyclops" do
        command "chkconfig hyclops on"
        action :run
    end
    execute "start hyclops" do
        command "service hyclops start"
        action :run
    end
when "ubuntu","debian"
    execute "initctl reload-configuration" do
        command "initctl reload-configuration"
        action :run
    end
    execute "initctl start hyclops" do
        command "initctl start hyclops"
        action :run
    end
end

