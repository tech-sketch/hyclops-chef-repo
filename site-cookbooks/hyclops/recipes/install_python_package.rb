ohai = Ohai::System.new
ohai.all_plugins
if ohai[:languages][:python][:version] =~ /^2\.6\..*/
  %w{ordereddict argparse}.each do |pypkg|
    python_pip "ordereddict" do
      action :install
    end
  end
end
%w{zabbix-api pyzmq psphere configobj boto}.each do |pypkg|
  python_pip pypkg do
    action :install
  end
end

python_pip "apache-libcloud" do
  version "0.13.2"
  action :install
end

python_pip "python-daemon" do
  version "1.6"
  action :install
end

