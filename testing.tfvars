#Shared  
  subscription_id = "xxxxxx-xxxx-xxx-xxx-xxxxxx"
  diagnostics_resource_group = "SBSA-CIB-Risk-Diag"
  diagnostics_storage = "sasancibsta"
  deployment_location = "westeu"
  tag_source_deployment = "terraform"
  tag_environment_deployment = "cw-testing"

#Linux VM Image
  linux_image_publisher = "Canonical"
  linux_image_offer = "UbuntuServer"
  linux_image_sku = "18.04-LTS"
  linux_image_version = "latest"

#Windows VM Image
  linux_image_publisher = "MicrosoftWindowsServer"
  linux_image_offer = "WindowsServer"
  linux_image_sku = "2019-Datacenter"
  linux_image_version = "latest"

#Linux Credentials
  linux_admin_username = "cwadmin"
  linux_admin_pw = "CW@p@ssw0rd!19"

#Windows Credentials
  win_admin_username = "cwadmin"
  win_admin_pw = "CW@p@ssw0rd!19"

#Jenkins Linux VM
  jenkins_linux_hostname = "VM-CW-jenkins1"
  jenkins_linux_deployment_rg = "CW-DevOps-Infra"
  jenkins_linux_network_security_group = "NSG-SAN-CIB-RiskApp"
  jenkins_linux_virtual_network_name = "vnet-CW-Dev-WestEu"
  jenkins_linux_address_space = "10.105.64.0/28"
  jenkins_linux_subnet_id = "General"
  jenkins_linux_vm_size = "Standard_D4s_v3"

#Rabbit Production Linux VM
  rabbit_prd_hostname = "VM-CW-rabbit1"
  rabbit_prd_deployment_rg = "CW-DevOps-Infra"
  rabbit_prd_network_security_group = "NSG-SAN-CIB-RiskApp"
  rabbit_prd_virtual_network_name = "vnetSBSA-CIB-Risk-Tech"
  rabbit_prd_address_space = "10.105.64.0/28"
  rabbit_prd_subnet_id = "General"
  rabbit_prd_vm_size = "Standard_D4s_v3"

#Jenkins Windows Server VM
  jenkins_win_hostname = "VM-CW-jenkins2"
  jenkins_win_deployment_rg = "CW-DevOps-Infra"
  jenkins_win_network_security_group = "NSG-Westeu-Dev-RiskApp"
  jenkins_win_virtual_network_name = "vnetSBSA-CIB-Risk-Tech"
  jenkins_win_address_space = "10.105.64.0/28"
  jenkins_win_subnet_id = "General"
  jenkins_win_vm_size = "Standard_D4s_v3"
