case node.platform
when "centos","redhat","amazon"
  include_recipe "hyclops::add_zeromq_repo"
  %w{gcc gcc-c++ zeromq zeromq-devel ipmitool python-devel python-setuptools}.each do |pkg|
    if node.platform == "amazon" && pkg == "ipmitool"
      next
    end
    package pkg do
      action :install
    end
  end
when "ubuntu","debian"
    %w{gcc g++ libzmq1 ipmitool python-dev python-setuptools}.each do |pkg|
        package pkg do
            action :install
        end
    end
end
