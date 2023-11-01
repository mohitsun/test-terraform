module "test" {
  for_each = var.components

  source = "./v3_module"
  security_groups = var.security_groups
  zone_id = var.zone_id
  name = each.value["name"]
  instance_type = each.value["instance_type"]
}