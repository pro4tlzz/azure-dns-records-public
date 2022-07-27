output "name" {
  value = {
    for k, v in azurerm_resource_group.group : k => v.name
  }
}