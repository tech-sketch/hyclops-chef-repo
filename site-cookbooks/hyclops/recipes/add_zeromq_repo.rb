execute "add zeromq repo" do
  command "curl #{node.zeromq.repo_url} > /etc/yum.repos.d/zeromq.repo"
  action :run
end

