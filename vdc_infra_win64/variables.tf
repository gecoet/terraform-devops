variable "prefix" {
  default = "cwprd"
}
variable "deployment_rg" {
  description = "The resource group the vm will be deployed to"
}
variable "deployment_location" {
  description = "The Azure region the vm will be deployed to"
}
variable "hostname" {
  description = "The name of the VM"
}
variable "network_security_group" {
  description = "The network security group used for vm"
}
variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
}
variable "storage_account_tier" {
  description = "Defines the storage tier. Valid options are Standard and Premium."
  default     = "Standard"
}
variable "vm_size" {
    description = "Specifies the size of the virtual machine."
    default = "string"
}
variable "virtual_network_name" {
  description = "The name for your virtual network."
  default     = "string"
}
variable "subnet_id" {
    description = "The Name for the subnet"
    default     = "string"
}
variable "image_publisher" {
  description = "Name of the publisher of the image (az vm image list)"
}
variable "image_offer" {
  description = "Name of the offer (az vm image list)"
}
variable "image_sku" {
  description = "Image SKU to apply (az vm image list)"
}
variable "image_version" {
  description = "Version of the image to apply (az vm image list)"
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
}
variable "diagnostics_storage" {
  description = "storage account for diagnostics"
}

variable "admin_username" {
  description = "The VM Admin username"
}
variable "admin_pw" {
  description = "The VM Admin Password"
}
variable "tag_source_deployment" {
  description = "Source of the deployment"
}

variable "tag_environment_deployment" {
  description = "Environment of the deployment"
}