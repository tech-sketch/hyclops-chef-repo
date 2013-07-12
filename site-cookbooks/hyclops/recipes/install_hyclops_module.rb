include_recipe "hyclops::download_hyclops"

execute "install HyClops" do
  command "/tmp/hyclops/setup.py install"
  action :run
end

include_recipe "hyclops::make_config"

