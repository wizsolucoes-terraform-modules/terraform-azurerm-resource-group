<!-- BEGIN_TF_DOCS -->
Este modulo corresponde a representação de uma solução desenvolvida pela wizsolucoes

## Example

```terraform
module "example" {
  source   = "./../"
  solucao  = "example"
  ambiente = "hml"
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | ~>3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| context | shared values between modules | `map` | `{}` | no |
| env | envionment for provision | `string` | n/a | yes |
| location | location onde o resource group sera alocado | `string` | `"East US"` | no |
| name | resource group name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| resource\_group\_location | n/a |
| resource\_group\_name | n/a |
<!-- END_TF_DOCS -->