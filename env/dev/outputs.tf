output "resource_group_names" {
  value = {
    for k, v in module.resource_group :
    k => v.rg_name
  }
}

output "storage_accounts" {
  value = {
    for k, v in module.storage_account :
    k => v.storage_account_name
  }
}

output "vnet_names" {
  value = {
    for k, v in module.vnet :
    k => v.vnet_name
  }
}

output "subnet_ids" {
  value = {
    for k, v in module.subnet :
    k => v.subnet_id
  }
}

output "public_ip_addresses" {
  value = {
    for k, v in module.public_ip :
    k => v.ip_address
  }
}


output "vm_details" {
  value = {
    for k, v in module.vm :
    k => {
      name       = v.vm_name
      id         = v.vm_id
      private_ip = v.private_ip
    }
  }
}