Feature: Check for restricted objects

   Feature Description
Scenario Outline: Restrict creation of specific resources
  Given I have <resource> defined
  Then the scenario should fail

  Examples:
  | resource                        |       
  | azurerm_resource_group          |
  | azurerm_virtual_network         |
  | azurerm_virtual_network_gateway |