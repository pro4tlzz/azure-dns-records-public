resource "azurerm_resource_group" "group" {
  for_each = var.resource_groups
  name     = each.value["name"]
  location = each.value["location"]
  tags = {
    Terraform : "True"
    Name : each.value["name"]
  }
}