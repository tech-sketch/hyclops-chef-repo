ohai = Ohai::System.new
ohai.all_plugins
if ohai[:languages][:python][:version] =~ /^2\.6\..*/
  %w{ordereddict argparse}.each do |pypkg|
    python_pip "ordereddict" do
      action :install
    end
  end
end
%w{apache-libcloud zabbix-api pyzmq psphere configobj boto}.each do |pypkg|
  python_pip pypkg do
    action :install
  end
  python_pip "python-daemon" do
    version "1.6"
    action :install
  end
end

