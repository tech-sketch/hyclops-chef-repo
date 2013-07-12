name "hyclops_server"
description "HyClops Server Role"
run_list(
  "recipe[hyclops::install_package]",
  "recipe[hyclops::install_python_package]",
  "recipe[hyclops::install_hyclops_module]",
  "recipe[zabbix_for_hyclops::replace_frontend]",
  "recipe[zabbix_for_hyclops::script_copy]"
)
