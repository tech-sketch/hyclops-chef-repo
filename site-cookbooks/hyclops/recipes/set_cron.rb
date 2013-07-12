cron "hyclops delete host script" do
  minute "*/5"
  user "hyclops"
  command %Q{python #{node.hyclops.install_dir}/cron_scripts/delete_not_exist_hosts.py}
  action :create
end
