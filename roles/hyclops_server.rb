name "hyclops_server"
description "HyClops Server Role"
run_list(
  "recipe[zabbix_agent::install_zabbix_sender]",
  "recipe[zabbix_agent]",
  "recipe[hyclops::install_package]",
  "recipe[hyclops::install_python_package]",
  "recipe[hyclops::install_hyclops_module]",
  "recipe[hyclops::copy_init_file]",
  "recipe[hyclops::startup_hyclops]",
  "recipe[hyclops::import_data]",
  "recipe[hyclops::set_cron]"
)
