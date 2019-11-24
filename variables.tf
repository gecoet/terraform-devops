
#Jenkins Linux VM
variable "jenkins_linux_hostname" {
  description = "The name of the VM"
  default     = "string"
}
variable "jenkins_linux_deployment_rg" {
  description = "The resource group the vm will be deployed to"
}
variable "jenkins_linux_virtual_network_name" {
  description = "The name for your virtual network."
  default     = "string"
}
variable "jenkins_linux_address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "string"
}
variable "jenkins_linux_subnet_id" {
  description = "The Name for the subnet"
  default     = "string"
}
variable "jenkins_linux_network_security_group" {
  description = "The network security group used for vm"
}
variable "jenkins_linux_vm_size" {
  description = "Specifies the size of the virtual machine."
  default = "string"
}


#Rabbit Production Linux VM
variable "rabbit_prd_hostname" {
  description = "The name of the VM"
  default     = "string"
}
variable "rabbit_prd_deployment_rg" {
  description = "The resource group the vm will be deployed to"
}
variable "rabbit_prd_virtual_network_name" {
  description = "The name for your virtual network."
  default     = "string"
}
variable "rabbit_prd_address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "string"
}
variable "rabbit_prd_subnet_id" {
  description = "The Name for the subnet"
  default     = "string"
}
variable "rabbit_prd_network_security_group" {
  description = "The network security group used for vm"
}
variable "rabbit_prd_vm_size" {
  description = "Specifies the size of the virtual machine."
  default = "string"
}


#Jenkins Windows Server VM
variable "jenkins_win_hostname" {
  description = "The name of the VM"
  default     = "string"
}
variable "jenkins_win_deployment_rg" {
  description = "The resource group the vm will be deployed to"
}
variable "jenkins_win_virtual_network_name" {
  description = "The name for your virtual network."
  default     = "string"
}
variable "jenkins_win_address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "string"
}
variable "jenkins_win_subnet_id" {
  description = "The Name for the subnet"
  default     = "string"
}
variable "jenkins_win_network_security_group" {
  description = "The network security group used for vm"
}
variable "jenkins_win_vm_size" {
  description = "Specifies the size of the virtual machine."
  default = "string"
}

#Shared Variables
variable "prefix" {
  default = "tfstarter"
}
variable "subscription_id" {
  description = "The subscription used for deployment"
  default     = "string"
}
variable "storage_account_tier" {
  description = "Defines the storage tier. Valid options are Standard and Premium."
  default     = "Standard"
}
variable "deployment_location" {
  description = "The Azure region the vm will be deployed to"
  default     = "South Africa North"
}
variable "boot_diagnostics" {
  description = "(Optional) Enable or Disable boot diagnostics"
  default     = "true"
}
variable "boot_diagnostics_sa_type" {
  description = "(Optional) Storage account type for boot diagnostics"
  default     = "LRS"
}
variable "diagnostics_resource_group" {
  description = "Resource group for diagnostics"
  default     = "string"
}
variable "diagnostics_storage" {
  description = "storage account for diagnostics"
}

variable "tag_source_deployment" {
  description = "Source of the deployment"
}
variable "tag_environment_deployment" {
  description = "Environment of the deployment"
}


#Linux Image
variable "linux_image_publisher" {
  description = "Name of the publisher of the image (az vm image list)"
  default     = "string"
}
variable "linux_image_offer" {
  description = "Name of the offer (az vm image list)"
  default     = "string"
}
variable "linux_image_sku" {
  description = "Image SKU to apply (az vm image list)"
  default     = "string"
}
variable "linux_image_version" {
  description = "Version of the image to apply (az vm image list)"
  default     = "string"
}

#Windows Server Image
variable "win_image_publisher" {
  description = "Name of the publisher of the image (az vm image list)"
  default     = "string"
}
variable "win_image_offer" {
  description = "Name of the offer (az vm image list)"
  default     = "string"
}
variable "win_image_sku" {
  description = "Image SKU to apply (az vm image list)"
  default     = "string"
}
variable "win_image_version" {
  description = "Version of the image to apply (az vm image list)"
  default     = "string"
}


#Linux Credentials
variable "linux_admin_username" {
  description = "The VM Admin username"
  type = "string"
}
variable "linux_admin_pw" {
  description = "The VM Admin Password"
  type = "string"
}

#Windows Credentials
variable "Win_admin_username" {
  description = "The VM Admin username"
  type = "string"
}
variable "win_admin_pw" {
  description = "The VM Admin Password"
  type = "string"
}