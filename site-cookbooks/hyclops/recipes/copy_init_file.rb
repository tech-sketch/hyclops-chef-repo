case node.platform
when "centos","redhat","amazon"
  execute "copy init file" do
    command "cp /tmp/hyclops/misc/init.d/redhat/hyclops /etc/init.d/"
    action :run
  end
when "ubuntu","debian"
  execute "copy init file" do
    command "cp /tmp/hyclops/misc/init.d/ubuntu/hyclops.conf /etc/init/"
    action :run
  end
end
