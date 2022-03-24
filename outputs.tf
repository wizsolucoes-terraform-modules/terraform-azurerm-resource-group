output "solucao" {
  value = azurerm_resource_group.rg.name
}

output "regiao" {
  value = azurerm_resource_group.rg.location
}
