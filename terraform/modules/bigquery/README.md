# Bigquery

This module creates bigquery dataset_id and gives access to dataset_id.

## Usage
```
module "bigquery" {
  project_id               = var.project_id
  source                   = ".//modules/bigquery"
  dataset_id               = var.dataset_id
  bigquery_role_assignment = var.bigquery_role_assignment
}

```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_bigquery_dataset.vmo2_tech_test](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset) | resource |
| [google_bigquery_dataset_access.bigquery_roles](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset_access) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bigquery_role_assignment"></a> [bigquery\_role\_assignment](#input\_bigquery\_role\_assignment) | provide dataset id, role and user | <pre>map(object({<br>    role = string<br>    user = string<br>  }))</pre> | n/a | yes |
| <a name="input_dataset_id"></a> [dataset\_id](#input\_dataset\_id) | provide dataset id name | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | provide project id name | `string` | n/a | yes |
