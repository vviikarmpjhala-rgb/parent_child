

module "azurerm_rgs" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgp
}
module "azurerm_vnets" {
  depends_on = [module.azurerm_rgs]
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.vnetp
}
module "azurerm_sub" {
  depends_on = [module.azurerm_vnets]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnetp
}
module "azurerm_vm" {
  depends_on = [module.azurerm_sub]
  source     = "../../modules/azurerm_virtual_machine"
  vms        = var.vms
}