### Install from package ###
case node.platform
when "centos","redhat","amazon"
 remote_file "/tmp/tornado.rpm" do
   source node.tornado.rpm_package_url
   action :create_if_missing
 end
 remote_file "/tmp/gateone.rpm" do
   source node.gateone.rpm_package_url
   action :create_if_missing
 end
 rpm_package "tornado.rpm" do
   source "/tmp/tornado.rpm"
   action :install
 end
 rpm_package "gateone.rpm" do
   source "/tmp/gateone.rpm"
   action :install
 end
when "ubuntu","debian"
 remote_file "/tmp/tornado.deb" do
   source node.tornado.deb_package_url
   action :create_if_missing
 end
 remote_file "/tmp/gateone.deb" do
   source node.gateone.deb_package_url
   action :create_if_missing
 end
 package "python-support" do
   action :install
 end
 dpkg_package "tornado.deb" do
   source "/tmp/tornado.deb"
   action :install
 end
 dpkg_package "gateone.deb" do
   source "/tmp/gateone.deb"
   action :install
 end
end

ohai = Ohai::System.new
ohai.all_plugins
if ohai[:languages][:python][:version] =~ /^2\.6\..*/
  python_pip "ordereddict" do
    action :install
  end
end

