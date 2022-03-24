<!-- BEGIN_TF_DOCS -->
Este modulo corresponde a representação de uma solução desenvolvida pela wizsolucoes

## Example

```terraform
module "wflow" {
  source  = "./modules/azurerm_solucao/v_0_0_1"
  solucao = "Wflow"
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | ~>3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ambiente | acronico do ambiente a ser provisionado | `string` | n/a | yes |
| context | valores globais compartilhados entre modulos. Ex: env=hml | `map` | `{}` | no |
| diretoria | nome da diretória responsável pela solucao | `string` | n/a | yes |
| gerencia | nome da gerencia responsavel pela solucao | `string` | n/a | yes |
| regiao | location onde o resource group sera alocado | `string` | `"East US"` | no |
| solucao | nome do resource group | `string` | n/a | yes |
| squad | squad responsavel pelo desenvolvimento da solucao | `string` | n/a | yes |
| superintendencia | nome da superintendencia responsavel pela solucao | `string` | n/a | yes |
| unidade | acronico da unidade de negocio responsavel pela solucao | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| resource\_group\_location | n/a |
| resource\_group\_name | n/a |
<!-- END_TF_DOCS -->