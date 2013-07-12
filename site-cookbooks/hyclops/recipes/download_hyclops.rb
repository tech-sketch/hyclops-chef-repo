remote_file "/tmp/hyclops.tar.gz" do
  source node.hyclops.source_url
  action :create
end

execute "execute tar command" do
  command "tar xvzf /tmp/hyclops.tar.gz -C /tmp;mv /tmp/hyclops-#{node.hyclops.version} /tmp/hyclops"
  action :run
end

