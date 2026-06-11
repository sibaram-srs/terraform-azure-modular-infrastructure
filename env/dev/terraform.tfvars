resource_groups = {
  rg1 = {
    name     = "sr-pod-rg"
    location = "West Europe"
  }
}

storage_accounts = {
  stg1 = {
    name                     = "srstgpod01"
    rg_key                   = "rg1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnets = {
  vnet1 = {
    name          = "sr-vm-vnet"
    rg_key        = "rg1"
    address_space = ["10.2.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name             = "vm-subnet"
    rg_key           = "rg1"
    vnet_key         = "vnet1"
    address_prefixes = ["10.2.1.0/24"]
  }
}

vm_pip = {
  pip1 = {
    name              = "vm-pip-01"
    rg_key            = "rg1"
    allocation_method = "Static"
    sku               = "Standard"
  }
}

nsgs = {
  nsg1 = {
    name   = "vm-nsg"
    rg_key = "rg1"
  }
}

nsg_associations = {
  nsga1 = {
    subnet_key = "subnet1"
    nsg_key    = "nsg1"
  }
}

nics = {
  nic1 = {
    name       = "app-nic"
    rg_key     = "rg1"
    subnet_key = "subnet1"
    pip_key    = "pip1"
  }
}

vms = {
  vm1 = {
    vm_name        = "app-vm"
    rg_key         = "rg1"
    nic_key        = "nic1"
    vm_size        = "Standard_B2ls_v2"
    admin_username = "azureadmin"
    admin_password = "Password@12345"
  }
}