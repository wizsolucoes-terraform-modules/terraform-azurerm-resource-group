variable "name" {
  type        = string
  description = "resource group name"
}

variable "env" {
  type        = string
  description = "envionment for provision"
}

variable "location" {
  type        = string
  description = "location onde o resource group sera alocado"
  default     = "East US"
}
variable "context" {
  description = "shared values between modules"
  default     = {}
}
