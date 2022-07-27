module "azure-resource-group" {
    source          ="../modules/azurerm-resource-group"
    for_each        = var.groups
    resource_groups = lookup(each.value, "resource_groups", {})
}

module "azure-dns-records" {
    source              = "../modules/azurerm-dns-records"
    for_each            = var.records
    resource_group_name = var.groups["resource_groups"]["resource_groups"]["dns"]["name"]
    zone_name           = "your zone name"
    a_records           = lookup(each.value, "A", {})
}