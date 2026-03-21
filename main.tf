module "rg" {
  for_each = var.rg_name
  source      = "./modules/rg"
  name        = "${each.key}-${var.env}"
  location    = each.value["location"]
}

module "databases" {
  for_each                   = var.databases
  source                     = "./modules/vm"
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  name                       = each.key
  rg_name                    = module.rg[each.value["rg_name"]].name
  rg_location                = module.rg[each.value["rg_name"]].location
  storage_image_reference_id = var.storage_image_reference_id
  zone_name                  = var.zone_name
  network_security_group_id = var.network_security_group_id
}

# module "applications" {
#   depends_on                 = [module.databases]
#   for_each                   = var.applications
#   source                     = "./component"
#   ip_configuration_subnet_id = var.ip_configuration_subnet_id
#   name                       = each.key
#   rg_name                    = var.rg_name
#   storage_image_reference_id = var.storage_image_reference_id
#   zone_name                  = var.zone_name
#   network_security_group_id = var.network_security_group_id
# }
#

