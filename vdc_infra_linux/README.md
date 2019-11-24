# Terraform VDC Infra Linux

This project the creation of LinuX VM used for backen service like Jenkins and Octopus

## 1. IAAS Linux VM

- The DevOps VM's will be deployed into the management Resource Group
- The deployments of Linux VM's will be used for Jenkins, Rabbit and the Risk app store.
- After VM deployments Boot diagnostics will be enabled and VM extensions will be installed.
- VM's will be linked to Data object "pre-deployed backend services"

## 2. Prerequisite for this Azure VM

- Desired Resource Group should be in place
- Virtual network should be configured
- Subnet for VM's should be configured
- Network Security Group should be configured
- Shared Storage account for all diagnostics services should be in place 

## 3. Variables

|Octopus Variable|Variable Name|Variable Description|Hard Coded (tfvars)|
|---|---|---|---|
|ResourceGroupName|resource_group_name|This specifies the name of the resource group.||
|DeploymentLocation|deployment_location|The Azure region the vm will be deployed to.||
|Hostname|hostname|The name of the VM.||
|NetworkSecurityGroup|network_security_group|The network security group used for vm.||
|VirtualNetworkName|virtual_network_name|This specifies name of virtual network where VM's will be configured.||
|AddressSpace|address_space|The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created||
|SubnetID|subnet_id|The Name for the subnet||
|StorageTier|storage_account_tier|Defines the storage tier. Valid options are Standard and Premium.||
|VmSize|vm_size|Specifies the size of the virtual machine.||
|ImagePublisher|image_publisher|Name of the publisher of the image (az vm image list "Canonical").||
|ImageOffer|image_offer|Name of the offer (UbuntuServer).||
|ImageSku|image_sku|Image SKU to apply (18.04-LTS).||
|ImageVersion|image_version|Image version to apply (latest).||
|BootDiagnostics|boot_diagnostics|TEnable or Disable boot diagnostics.||
|BootDiagnosticsStorageAccountType|boot_diagnostics_sa_type|Storage account type for boot diagnostics (LRS / GRS / ZRS).||
|DiagnosticsRG|diagnostics_resource_group|Specifies the Resource group for diagnostics.||
|DiagnosticsStorage|diagnostics_storage|storage account used for diagnostics.||
|AdminUsername|admin_username|The local Admin username.||
|AdminPassword|admin_pw|The local Admin Password.||
|TagDeploymentSource|tag_source_deployment|Source of the deployment.||
|EnvironmentDeploy|tag_environment_deployment|Environment of the deployment||

### 3.1. Octopus Deploy

Octopus Deploy does a replace of the Octopus replaceable variable's in in the terraform.tfvars file per environment.

Octopus Deploy also manages the Access Key for the Azure Blob Storage backend for the Terraform project. The Jenkinsfile has a step that replaces a placeholder in the main.tf file with the key.

```terraform

terraform {
  backend "azurerm" {
    resource_group_name  = "SAN-CIBRiskTech-DevOps"
    storage_account_name = "sasandosta001"
    container_name       = "sasanpdstc001"
    key                  = "base-infra.terraform.tfstate"
    ######
  }
}

```

becomes

```terraform

  terraform {
  backend "azurerm" {
    resource_group_name  = "SAN-CIBRiskTech-DevOps"
    storage_account_name = "sasandosta001"
    container_name       = "sasanpdstc001"
    key                  = "base-infra.terraform.tfstate"
    access_key           ="#{AccessKey}"
  }
}

```

and Octopus injects the Storage Account Access key into the slug provided.

## 4. Outputs

|Output Name|Description|
|---|---|
|VM_id|Reference to a VM with which this NIC has been associated.|


## 5. Gotchas

There are currently no known possible issues to lookout for.
