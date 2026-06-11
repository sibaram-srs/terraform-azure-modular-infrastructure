module "resource_group" {
  source   = "../../module/resource_group"
  for_each = var.resource_groups
  rg_name  = each.value.name
  location = each.value.location
}

module "storage_account" {
  source                   = "../../module/storage_account"
  for_each                 = var.storage_accounts
  storage_account_name     = each.value.name
  resource_group_name      = module.resource_group[each.value.rg_key].rg_name
  location                 = module.resource_group[each.value.rg_key].location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

module "vnet" {
  source              = "../../module/virtual_network"
  for_each            = var.vnets
  vnet_name           = each.value.name
  resource_group_name = module.resource_group[each.value.rg_key].rg_name
  location            = module.resource_group[each.value.rg_key].location
  address_space       = each.value.address_space
}

module "subnet" {
  source               = "../../module/subnet"
  for_each             = var.subnets
  subnet_name          = each.value.name
  resource_group_name  = module.resource_group[each.value.rg_key].rg_name
  virtual_network_name = module.vnet[each.value.vnet_key].vnet_name
  address_prefixes     = each.value.address_prefixes
}

module "public_ip" {
  source              = "../../module/pip"
  for_each            = var.vm_pip
  pip_name            = each.value.name
  resource_group_name = module.resource_group[each.value.rg_key].rg_name
  location            = module.resource_group[each.value.rg_key].location
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}

module "nsg" {
  source              = "../../module/nsg"
  for_each            = var.nsgs
  nsg_name            = each.value.name
  resource_group_name = module.resource_group[each.value.rg_key].rg_name
  location            = module.resource_group[each.value.rg_key].location
}

module "nsg_association" {
  source    = "../../module/nsg_association"
  for_each  = var.nsg_associations
  subnet_id = module.subnet[each.value.subnet_key].subnet_id
  nsg_id    = module.nsg[each.value.nsg_key].nsg_id
}

module "nic" {
  source              = "../../module/nic"
  for_each            = var.nics
  nic_name            = each.value.name
  resource_group_name = module.resource_group[each.value.rg_key].rg_name
  location            = module.resource_group[each.value.rg_key].location
  subnet_id           = module.subnet[each.value.subnet_key].subnet_id
  public_ip_id        = module.public_ip[each.value.pip_key].pip_id
  #  public_ip_id        = try(module.public_ip[each.value.pip_key].pip_id, null)
}


module "vm" {
  source              = "../../module/vm"
  for_each            = var.vms
  vm_name             = each.value.vm_name
  resource_group_name = module.resource_group[each.value.rg_key].rg_name
  location            = module.resource_group[each.value.rg_key].location
  vm_size             = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
  nic_id              = module.nic[each.value.nic_key].nic_id
}


