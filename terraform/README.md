<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.51.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | 4.51.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.51.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bigquery"></a> [bigquery](#module\_bigquery) | .//modules/bigquery | n/a |

## Resources

| Name | Type |
|------|------|
| [google_compute_network.gke-network](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/compute_network) | resource |
| [google_compute_router.outbound-router](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/compute_router) | resource |
| [google_compute_router_nat.outbound-gke-nat](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/compute_router_nat) | resource |
| [google_compute_subnetwork.gke-network-subnet](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/compute_subnetwork) | resource |
| [google_container_cluster.private](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/container_cluster) | resource |
| [google_container_node_pool.primary-node](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/container_node_pool) | resource |
| [google_container_node_pool.secondary-node](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/container_node_pool) | resource |
| [google_project_iam_member.node_sva_account](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/project_iam_member) | resource |
| [google_project_iam_member.svc_act_user](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/project_iam_member) | resource |
| [google_service_account.gke-sva](https://registry.terraform.io/providers/hashicorp/google/4.51.0/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bigquery_role_assignment"></a> [bigquery\_role\_assignment](#input\_bigquery\_role\_assignment) | provide bigquery role details | <pre>map(object({<br>    role = string<br>    user = string<br>  }))</pre> | n/a | yes |
| <a name="input_dataset_id"></a> [dataset\_id](#input\_dataset\_id) | provide bigquery dataset id | `string` | n/a | yes |
| <a name="input_gke_pod_range_name"></a> [gke\_pod\_range\_name](#input\_gke\_pod\_range\_name) | provide pod range | `string` | n/a | yes |
| <a name="input_gke_service_range_name"></a> [gke\_service\_range\_name](#input\_gke\_service\_range\_name) | provide service range | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | provide project id | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | provide region name | `string` | n/a | yes |
| <a name="input_subnet_ip_cidr_range"></a> [subnet\_ip\_cidr\_range](#input\_subnet\_ip\_cidr\_range) | provide subnet ip cidr range | `string` | n/a | yes |
| <a name="input_subnet_secondary_cidr"></a> [subnet\_secondary\_cidr](#input\_subnet\_secondary\_cidr) | provide subnect secondary cidr | `list(any)` | n/a | yes |
| <a name="input_sva_account_id"></a> [sva\_account\_id](#input\_sva\_account\_id) | provide service account id | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->