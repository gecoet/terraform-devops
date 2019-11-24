
provider "azurerm"{}

terraform {
  backend "azurerm" {
    resource_group_name  = "Cloudwise-Prod-Infrastructure"
    storage_account_name = "cwsandevops001"
    container_name       = "cwbackend001"
    key                  = "starter.terraform.tfstate"
  }
}

##Linux VM Deployment
#Jenkins Linux VM
module "jenkins_linux" {
  source = "./vdc_infra_linux"

  hostname = "${var.jenkins_linux_hostname}"
  deployment_rg = "${var.jenkins_linux_deployment_rg}"
  virtual_network_name = "${var.jenkins_linux_virtual_network_name}"
  address_space = "${var.jenkins_linux_address_space}"
  subnet_id = "${var.jenkins_linux_subnet_id}"
  network_security_group = "${var.jenkins_linux_network_security_group}"
  vm_size = "${var.jenkins_linux_vm_size}"
  image_publisher = "${var.linux_image_publisher}"
  image_offer = "${var.linux_image_offer}"
  image_sku = "${var.linux_image_sku}"
  image_version = "${var.linux_image_version}" 
  deployment_location = "${var.deployment_location}"
  diagnostics_storage = "${var.diagnostics_storage}"
  diagnostics_resource_group = "${var.diagnostics_resource_group}"
  tag_source_deployment = "${var.tag_source_deployment}"
  tag_environment_deployment = "${var.tag_environment_deployment}"
  admin_username = "${var.linux_admin_username}"
  admin_pw = "${var.linux_admin_pw}"
}

#Rabbit Production Linux VM
module "rabbit_prd_linux" {
  source = "./vdc_infra_linux"

  hostname = "${var.rabbit_prd_hostname}"
  deployment_rg = "${var.rabbit_prd_deployment_rg}"
  virtual_network_name = "${var.rabbit_prd_virtual_network_name}"
  address_space = "${var.rabbit_prd_address_space}"
  subnet_id = "${var.rabbit_prd_subnet_id}"
  network_security_group = "${var.rabbit_prd_network_security_group}"
  vm_size = "${var.rabbit_prd_vm_size}"
  image_publisher = "${var.linux_image_publisher}"
  image_offer = "${var.linux_image_offer}"
  image_sku = "${var.linux_image_sku}"
  image_version = "${var.linux_image_version}" 
  deployment_location = "${var.deployment_location}"
  diagnostics_storage = "${var.diagnostics_storage}"
  diagnostics_resource_group = "${var.diagnostics_resource_group}"
  tag_source_deployment = "${var.tag_source_deployment}"
  tag_environment_deployment = "${var.tag_environment_deployment}"
  admin_username = "${var.linux_admin_username}"
  admin_pw = "${var.linux_admin_pw}"
}

##Windows Server VM Deployment
#Jenkins Windows Server VM
module "jenkins_win64" {
  source = "./vdc_infra_win64"

  hostname = "${var.jenkins_win_hostname}"
  deployment_rg = "${var.jenkins_win_deployment_rg}"
  virtual_network_name = "${var.jenkins_win_virtual_network_name}"
  address_space = "${var.jenkins_win_address_space}"
  subnet_id = "${var.jenkins_win_subnet_id}"
  network_security_group = "${var.jenkins_win_network_security_group}"
  vm_size = "${var.jenkins_win_vm_size}"
  image_publisher = "${var.win_image_publisher}"
  image_offer = "${var.win_image_offer}"
  image_sku = "${var.win_image_sku}"
  image_version = "${var.win_image_version}"  
  deployment_location = "${var.deployment_location}"
  diagnostics_storage = "${var.diagnostics_storage}"
  diagnostics_resource_group = "${var.diagnostics_resource_group}"
  tag_source_deployment = "${var.tag_source_deployment}"
  tag_environment_deployment = "${var.tag_environment_deployment}"
  admin_username = "${var.win_admin_username}"
  admin_pw = "${var.win_admin_pw}"
}
