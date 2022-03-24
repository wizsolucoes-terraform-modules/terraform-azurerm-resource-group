/**
* Este modulo corresponde a representação de uma solução desenvolvida pela wizsolucoes
*/
resource "azurerm_resource_group" "rg" {
  name     = var.solucao
  location = var.regiao
  tags = {
    "wiz-un"               = var.unidade
    "wiz-diretorio"        = var.diretoria
    "wiz-superintendencia" = var.superintendencia
    "wiz-gerencia"         = var.gerencia
    "wiz-squad"            = var.squad
  }
  lifecycle {
    prevent_destroy = true
  }
}
