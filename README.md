# Terraform Azure Landing Zone

Infrastructure as Code (IaC) implementation of an Azure Landing Zone using Terraform. This project provisions and manages core Azure infrastructure components in a modular and reusable manner.

## Architecture Components

The repository contains Terraform configurations for:

* Resource Groups
* Virtual Networks (VNet)
* Subnets
* Network Security Groups (NSG)
* Virtual Machines (VM)
* Bastion Host
* VNet Peering
* Storage Accounts

## Repository Structure

```text
AZ_LANDING_ZONE/
├── bastion/
├── nsg/
├── resource_group/
├── storage_account/
├── subnet/
├── virtual_network/
├── vm/
└── vnet_peering/
```

Each folder represents an independent Terraform module/component and contains:

* `main.tf` – Resource definitions
* `variables.tf` – Input variables
* `outputs.tf` – Output values
* `provider.tf` – Provider configuration
* `terraform.tfvars` – Environment-specific variable values (not committed)

## Prerequisites

* Terraform
* Azure Subscription
* Azure CLI
* Appropriate Azure RBAC permissions

## Authentication

Login to Azure before deployment:

```bash
az login
```

Verify subscription:

```bash
az account show
```

## Deployment

Navigate to the required component directory:

```bash
cd virtual_network
```

Initialize Terraform:

```bash
terraform init
```

Review execution plan:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

## Security Notes

The following files are excluded from version control:

* `.terraform/`
* `terraform.tfstate`
* `terraform.tfstate.backup`
* `.terraform.lock.hcl`
* `terraform.tfvars`

Sensitive values and state files should never be committed to GitHub.

## Learning Objectives

This project demonstrates:

* Azure Infrastructure as Code (IaC)
* Terraform Module-Based Design
* Network Segmentation with VNets and Subnets
* NSG Configuration and Security Controls
* Azure Bastion Deployment
* VNet Peering
* Infrastructure Automation Best Practices

## Author

Sibaram Sahu

## License

This project is intended for learning, experimentation, and infrastructure automation practice.
