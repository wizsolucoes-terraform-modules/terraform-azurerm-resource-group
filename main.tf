/**
* Este modulo corresponde a representação de uma solução desenvolvida pela wizsolucoes
*/
resource "azurerm_resource_group" "rg" {
  name     = "${var.name}-${var.env}-rg"
  location = var.location
  lifecycle {
    prevent_destroy = true
  }
}
