name "hyclops_server"
description "HyClops Server Role"
run_list(
  "recipe[gateone::install_gateone]",
  "recipe[gateone_for_hyclops::init_gateone]",
  "recipe[gateone::startup_gateone]"
)
