📌 Terraform Azure Modular Infrastructure
🚀 Overview

This project provides a modular Infrastructure as Code (IaC) setup using Terraform to deploy core Azure resources in a structured and reusable way.

It follows a module-based architecture to ensure scalability, reusability, and maintainability.

🏗️ Architecture Components

This infrastructure includes:

Resource Group
Storage Account
Virtual Network (VNet)
Subnet
Network Security Group (NSG)
Public IP
Network Interface (NIC)
Virtual Machine (VM)

📁 Project Structure

```text
terraform-azure-modular-infrastructure/
│
├── module/
│   ├── resource_group/
│   ├── storage_account/
│   ├── virtual_network/
│   ├── subnet/
│   ├── nsg/
│   ├── pip/
│   ├── nic/
│   └── vm/
│
├── env/
│   └── dev/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md
```

## Prerequisites

* Terraform installed
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

🚀 How to Deploy

1. Initialize Terraform

```bash
terraform init
```
2. Validate configuration

```bash
terraform validate
```
3. Plan deployment

```bash
terraform plan
```

4. Apply infrastructure

```bash
terraform apply -auto-approve
```

🔒 Security Best Practices
.tfstate files are ignored via .gitignore
Sensitive data (passwords, secrets) should not be committed
Use Azure Key Vault for production secrets

📌 Features
Fully modular Terraform design
Reusable components
Scalable architecture
Clean separation of concerns
Supports multi-environment setup (dev/prod ready)

## Author

Sibaram Sahu

## License

This project is open-source for learning and demonstration purposes.

⭐ If you like this project

Give it a ⭐ on GitHub and feel free to fork it!
