variable "solucao" {
  type        = string
  description = "nome do resource group"
}

variable "regiao" {
  type        = string
  description = "location onde o resource group sera alocado"
  default     = "East US"
}

variable "unidade" {
  type        = string
  description = "acronico da unidade de negocio responsavel pela solucao"
}

variable "diretoria" {
  type        = string
  description = "nome da diretória responsável pela solucao"
}

variable "superintendencia" {
  type        = string
  description = "nome da superintendencia responsavel pela solucao"
}

variable "gerencia" {
  type        = string
  description = "nome da gerencia responsavel pela solucao"
}

variable "squad" {
  type        = string
  description = "squad responsavel pelo desenvolvimento da solucao"
}

variable "context" {
  description = "valores globais compartilhados entre modulos. Ex: env=hml"
  default     = {}
}
