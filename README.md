# Terraform Core Infrastrucute

This project drives the core infrastructure that underpins our services.

- Subnets
- Keyvaults
- Jenkins Linux VM
- Jenkins Windows VM
- Rabbit Production VM
- Rabbit Development VM
- Automation VM
- Agents Vm

## 1. IAAS VM's

- The DevOps VM's will be deployed into the management Resource Group
- The deployments of Linux VM's will be used for Jenkins, Rabbit and the Risk app store.
- After VM deployments Boot diagnostics will be enabled and VM extensions will be installed.
- VM's will be linked to Data object "pre-deployed backend services"

## 2. Prerequisite for Azure Core Infra VM's

- Desired Resource Group should be in place
- Virtual network should be configured
- Subnet for VM's should be configured
- Network Security Group should be configured
- Shared Storage account for all diagnostics services should be in place 

## 3. Variables 
### 3.1 Variables Linux Jenkins VM

|Octopus Variable|Variable Name|Variable Description|Hard Coded (tfvars)|
|---|---|---|---|
|jenkins_linux_DeploymentRG|jenkins_resource_group_name|This specifies the name of the resource group.||
|jenkins_linux_hostname|jenkins_hostname|The name of the VM.||
|jenkins_linux_network_security_group|jenkins_network_security_group|The network security group used for vm.||
|jenkins_linux_vnet|jenkins_virtual_network_name|This specifies name of virtual network where VM's will be configured.||
|jenkins_linux_address_space|jenkins_address_space|The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created||
|jenkins_linux_subnet_id|jenkins_subnet_id|The Name for the subnet||
|jenkins_linux_vm_size|jenkins_vm_size|Specifies the size of the virtual machine.||
|linux_ImagePublisher|linux_image_publisher|Name of the publisher of the image (az vm image list "Canonical").||
|ImageOffer|linux_image_offer|Name of the offer (UbuntuServer).||
|linux_ImageSku|linux_image_sku|Image SKU to apply (18.04-LTS).||
|linux_ImageVersion|linux_image_version|Image version to apply (latest).||
|BootDiagnostics|boot_diagnostics|TEnable or Disable boot diagnostics.||
|BootDiagnosticsStorageAccountType|boot_diagnostics_sa_type|Storage account type for boot diagnostics (LRS / GRS / ZRS).||
|DiagnosticsRG|diagnostics_resource_group|Specifies the Resource group for diagnostics.||
|DiagnosticsStorage|diagnostics_storage|storage account used for diagnostics.||
|AdminUsername|linux_admin_username|The local Admin username.||
|AdminPassword|linux_admin_pw|The local Admin Password.||
|TagDeploymentSource|tag_source_deployment|Source of the deployment.||
|EnvironmentDeploy|tag_environment_deployment|Environment of the deployment||

### 3.2 Variables Rabbit Production VM

|Octopus Variable|Variable Name|Variable Description|Hard Coded (tfvars)|
|---|---|---|---|
|ResourceGroupName|rabbit_prd_resource_group_name|This specifies the name of the resource group.||
|Hostname|rabbit_prd_hostname|The name of the VM.||
|NetworkSecurityGroup|rabbit_prd_network_security_group|The network security group used for vm.||
|VirtualNetworkName|rabbit_prd_virtual_network_name|This specifies name of virtual network where VM's will be configured.||
|AddressSpace|rabbit_prd_address_space|The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created||
|SubnetID|rabbit_prd_subnet_id|The Name for the subnet||
|VmSize|rabbit_prd_vm_size|Specifies the size of the virtual machine.||
|linux_ImagePublisher|linux_image_publisher|Name of the publisher of the image (az vm image list "Canonical").||
|linux_ImageOffer|linux_image_offer|Name of the offer (UbuntuServer).||
|linux_ImageSku|linux_image_sku|Image SKU to apply (18.04-LTS).||
|linux_ImageVersion|linux_image_version|Image version to apply (latest).||
|BootDiagnostics|boot_diagnostics|TEnable or Disable boot diagnostics.||
|BootDiagnosticsStorageAccountType|boot_diagnostics_sa_type|Storage account type for boot diagnostics (LRS / GRS / ZRS).||
|DiagnosticsRG|diagnostics_resource_group|Specifies the Resource group for diagnostics.||
|DiagnosticsStorage|diagnostics_storage|storage account used for diagnostics.||
|AdminUsername|linux_admin_username|The local Admin username.||
|AdminPassword|linux_admin_pw|The local Admin Password.||
|TagDeploymentSource|tag_source_deployment|Source of the deployment.||
|EnvironmentDeploy|tag_environment_deployment|Environment of the deployment||

### 3.3 Variables Rabbit Development VM

|Octopus Variable|Variable Name|Variable Description|Hard Coded (tfvars)|
|---|---|---|---|
|ResourceGroupName|rabbit_dev_resource_group_name|This specifies the name of the resource group.||
|Hostname|rabbit_prdhostname|The name of the VM.||
|NetworkSecurityGroup|rabbit_dev_network_security_group|The network security group used for vm.||
|VirtualNetworkName|rabbit_dev_virtual_network_name|This specifies name of virtual network where VM's will be configured.||
|AddressSpace|rabbit_dev_address_space|The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created||
|SubnetID|rabbit_dev_subnet_id|The Name for the subnet||
|VmSize|rabbit_prdvm_size|Specifies the size of the virtual machine.||
|linux_ImagePublisher|linux_image_publisher|Name of the publisher of the image (az vm image list "Canonical").||
|ImageOffer|linux_image_offer|Name of the offer (UbuntuServer).||
|linux_ImageSku|linux_image_sku|Image SKU to apply (18.04-LTS).||
|linux_ImageVersion|linux_image_version|Image version to apply (latest).||
|BootDiagnostics|boot_diagnostics|TEnable or Disable boot diagnostics.||
|BootDiagnosticsStorageAccountType|boot_diagnostics_sa_type|Storage account type for boot diagnostics (LRS / GRS / ZRS).||
|DiagnosticsRG|diagnostics_resource_group|Specifies the Resource group for diagnostics.||
|DiagnosticsStorage|diagnostics_storage|storage account used for diagnostics.||
|linux_AdminUsername|linux_admin_username|The local Admin username.||
|linux_AdminPassword|linux_admin_pw|The local Admin Password.||
|TagDeploymentSource|tag_source_deployment|Source of the deployment.||
|EnvironmentDeploy|tag_environment_deployment|Environment of the deployment||

### 3.4 Variables Jenkins Windows Server VM

|Octopus Variable|Variable Name|Variable Description|Hard Coded (tfvars)|
|---|---|---|---|
|ResourceGroupName|jenkins_win_resource_group_name|This specifies the name of the resource group.||
|Hostname|jenkins_win_hostname|The name of the VM.||
|NetworkSecurityGroup|jenkins_win_network_security_group|The network security group used for vm.||
|VirtualNetworkName|jenkins_win_virtual_network_name|This specifies name of virtual network where VM's will be configured.||
|AddressSpace|jenkins_win_address_space|The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created||
|SubnetID|jenkins_win_subnet_id|The Name for the subnet||
|VmSize|jenkins_win_vm_size|Specifies the size of the virtual machine.||
|win_ImagePublisher|win_image_publisher|Name of the publisher of the image (az vm image list "MicrosoftWindowsServer").||
|win_ImageOffer|win_image_offer|Name of the offer (WindowsServer).||
|win_ImageSku|win_image_sku|Image SKU to apply (2019-Datacenter).||
|win_ImageVersion|win_image_version|Image version to apply (latest).||
|BootDiagnostics|boot_diagnostics|TEnable or Disable boot diagnostics.||
|BootDiagnosticsStorageAccountType|boot_diagnostics_sa_type|Storage account type for boot diagnostics (LRS / GRS / ZRS).||
|DiagnosticsRG|diagnostics_resource_group|Specifies the Resource group for diagnostics.||
|DiagnosticsStorage|diagnostics_storage|storage account used for diagnostics.||
|Win_AdminUsername|win_admin_username|The local Admin username.||
|Win_AdminPassword|win_admin_pw|The local Admin Password.||
|TagDeploymentSource|tag_source_deployment|Source of the deployment.||
|EnvironmentDeploy|tag_environment_deployment|Environment of the deployment||

### 3.5 Variables Agents Windows Server VM

|Octopus Variable|Variable Name|Variable Description|Hard Coded (tfvars)|
|---|---|---|---|
|ResourceGroupName|agent_resource_group_name|This specifies the name of the resource group.||
|Hostname|agent_hostname|The name of the VM.||
|NetworkSecurityGroup|agent_network_security_group|The network security group used for vm.||
|VirtualNetworkName|agent_virtual_network_name|This specifies name of virtual network where VM's will be configured.||
|AddressSpace|agent_address_space|The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created||
|SubnetID|agent_subnet_id|The Name for the subnet||
|VmSize|agent_vm_size|Specifies the size of the virtual machine.||
|win_ImagePublisher|win_image_publisher|Name of the publisher of the image (az vm image list "MicrosoftWindowsServer").||
|win_ImageOffer|win_image_offer|Name of the offer (WindowsServer).||
|win_ImageSku|win_image_sku|Image SKU to apply (2019-Datacenter).||
|win_ImageVersion|win_image_version|Image version to apply (latest).||
|BootDiagnostics|boot_diagnostics|TEnable or Disable boot diagnostics.||
|BootDiagnosticsStorageAccountType|boot_diagnostics_sa_type|Storage account type for boot diagnostics (LRS / GRS / ZRS).||
|DiagnosticsRG|diagnostics_resource_group|Specifies the Resource group for diagnostics.||
|DiagnosticsStorage|diagnostics_storage|storage account used for diagnostics.||
|Win_AdminUsername|linux_admin_username|The local Admin username.||
|Win__AdminPassword|linux_admin_pw|The local Admin Password.||
|TagDeploymentSource|tag_source_deployment|Source of the deployment.||
|EnvironmentDeploy|tag_environment_deployment|Environment of the deployment||

### 3.6 Variables Automation Windows Server VM

|Octopus Variable|Variable Name|Variable Description|Hard Coded (tfvars)|
|---|---|---|---|
|ResourceGroupName|jenkins_resource_group_name|This specifies the name of the resource group.||
|Hostname|jenkins_hostname|The name of the VM.||
|NetworkSecurityGroup|jenkins_network_security_group|The network security group used for vm.||
|VirtualNetworkName|jenkins_virtual_network_name|This specifies name of virtual network where VM's will be configured.||
|AddressSpace|jenkins_address_space|The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created||
|SubnetID|jenkins_subnet_id|The Name for the subnet||
|VmSize|jenkins_vm_size|Specifies the size of the virtual machine.||
|win_ImagePublisher|win_image_publisher|Name of the publisher of the image (az vm image list "MicrosoftWindowsServer").||
|win_ImageOffer|win_image_offer|Name of the offer (WindowsServer).||
|win_ImageSku|win_image_sku|Image SKU to apply (2019-Datacenter).||
|win_ImageVersion|win_image_version|Image version to apply (latest).||
|BootDiagnostics|boot_diagnostics|TEnable or Disable boot diagnostics.||
|BootDiagnosticsStorageAccountType|boot_diagnostics_sa_type|Storage account type for boot diagnostics (LRS / GRS / ZRS).||
|DiagnosticsRG|diagnostics_resource_group|Specifies the Resource group for diagnostics.||
|DiagnosticsStorage|diagnostics_storage|storage account used for diagnostics.||
|Win_AdminUsername|linux_admin_username|The local Admin username.||
|Win_AdminPassword|linux_admin_pw|The local Admin Password.||
|TagDeploymentSource|tag_source_deployment|Source of the deployment.||
|EnvironmentDeploy|tag_environment_deployment|Environment of the deployment||

## 4. Octopus Deploy

Please ensure the following vars are catered for in Octopus:

```terraform

  # General locals
  tag_source_deployment = "#{SourceDeploymentTag}" 
  tag_environment_deployment = "#{EnvironmentDeploymentTag}"

  # subnet locals
  subnet_resource_group_name = "#{SubnetRGName}" 
  subnet_name = "#{SubnetName}" 
  subnet_virtual_network_name = "#{VNetName}" 
  address_prefix = "#{SubnetCIDR}" 

  # Key Vault locals
  deployment_rg = "#{DeploymentRGName}" 
  key_vault_name = "#{KeyVaultName}" 
  key_vault_tenant_id = "#{KeyVaultTenantId}" 
  key_vault_sku_name = "#{KeyVaultSKU}" 

  # Key Vault Access Policy locals
  key_vault_access_policy_object_id = "#{KeyVaultAccessPolicyObjectId}" 

```
Octopus Deploy does a replace of these placeholders per environment.

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
    access_key			     ="#{AccessKey}"
  }
}

```
and Octopus injects the Storage Account Access key into the slug provided.

## 5. Outputs

|Output Name|Description|
|---|---|
|VM_id|Reference to a VM with which this NIC has been associated.|

## 6. Gotchas

DuringAt the time of testing the VMAccessAgent extension deployment on a Windows Server VM, it came to light that the latest version (in some regions) has issues when the CMD gets executed inside the VM. Work around is to set "auto_upgrade_minor_version = false" and to set "type_handler_version = 2.3"


