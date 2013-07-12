remote_file "/tmp/hyclops.tar.gz" do
    source node.hyclops.source_url
    action :create
end

execute "execute tar command" do
    command "/bin/tar xvzf /tmp/hyclops.tar.gz -C /tmp"
    action :run
end

