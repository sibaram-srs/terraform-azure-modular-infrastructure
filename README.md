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


<mxfile host="app.diagrams.net">
  <diagram name="Azure Terraform Architecture">
    <mxGraphModel dx="1200" dy="800" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1100" pageHeight="850">
      <root>
        <mxCell id="0"/>
        <mxCell id="1" parent="0"/>

        <!-- Terraform -->
        <mxCell id="2" value="Terraform (IaC Engine)" style="rounded=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="1">
          <mxGeometry x="420" y="20" width="220" height="60" as="geometry"/>
        </mxCell>

        <!-- Resource Group -->
        <mxCell id="3" value="Resource Group (rg1)" style="rounded=1;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="420" y="120" width="220" height="60" as="geometry"/>
        </mxCell>

        <!-- VNet -->
        <mxCell id="4" value="Virtual Network (VNet)" style="rounded=1;fillColor=#fff2cc;strokeColor=#d6b656;" vertex="1" parent="1">
          <mxGeometry x="420" y="210" width="220" height="60" as="geometry"/>
        </mxCell>

        <!-- Subnet -->
        <mxCell id="5" value="Subnet" style="rounded=1;fillColor=#fff2cc;strokeColor=#d6b656;" vertex="1" parent="1">
          <mxGeometry x="420" y="300" width="220" height="60" as="geometry"/>
        </mxCell>

        <!-- NSG -->
        <mxCell id="6" value="Network Security Group (NSG)" style="rounded=1;fillColor=#f8cecc;strokeColor=#b85450;" vertex="1" parent="1">
          <mxGeometry x="120" y="300" width="220" height="60" as="geometry"/>
        </mxCell>

        <!-- Public IP -->
        <mxCell id="7" value="Public IP" style="rounded=1;fillColor=#e1d5e7;strokeColor=#9673a6;" vertex="1" parent="1">
          <mxGeometry x="700" y="300" width="220" height="60" as="geometry"/>
        </mxCell>

        <!-- NIC -->
        <mxCell id="8" value="Network Interface (NIC)" style="rounded=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="1">
          <mxGeometry x="420" y="400" width="220" height="60" as="geometry"/>
        </mxCell>

        <!-- VM -->
        <mxCell id="9" value="Virtual Machine (VM)" style="rounded=1;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="420" y="500" width="220" height="60" as="geometry"/>
        </mxCell>

        <!-- Edges -->
        <mxCell id="10" edge="1" parent="1" source="2" target="3" style="edgeStyle=orthogonalEdgeStyle;rounded=0;">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>

        <mxCell id="11" edge="1" parent="1" source="3" target="4"/>
        <mxCell id="12" edge="1" parent="1" source="4" target="5"/>
        <mxCell id="13" edge="1" parent="1" source="5" target="8"/>
        <mxCell id="14" edge="1" parent="1" source="6" target="5"/>
        <mxCell id="15" edge="1" parent="1" source="7" target="8"/>
        <mxCell id="16" edge="1" parent="1" source="8" target="9"/>

      </root>
    </mxGraphModel>
  </diagram>
</mxfile>


## Author

Sibaram Sahu

## License

This project is open-source for learning and demonstration purposes.

⭐ If you like this project

Give it a ⭐ on GitHub and feel free to fork it!
