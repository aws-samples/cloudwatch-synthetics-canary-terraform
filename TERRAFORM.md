## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7.3 |
| <a name="requirement_archive"></a> [archive](#requirement\_archive) | = 2.4.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.55.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_canary"></a> [canary](#module\_canary) | ./modules/canary | n/a |
| <a name="module_canary_infra"></a> [canary\_infra](#module\_canary\_infra) | ./modules/canary-infra | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_sns_topic"></a> [alert\_sns\_topic](#input\_alert\_sns\_topic) | The SNS topic to which the cloud watch alarm notification is sent. | `string` | n/a | yes |
| <a name="input_api_hostname"></a> [api\_hostname](#input\_api\_hostname) | The host name of the API, ex: mydomain.internal. | `string` | n/a | yes |
| <a name="input_api_path"></a> [api\_path](#input\_api\_path) | The path for the API call , ex: /path?param=value. | `string` | n/a | yes |
| <a name="input_frequency"></a> [frequency](#input\_frequency) | The frequency in minutes at which the canary should be run. The minimum is two minutes. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the canary which is going to be sent as part of the notification when the canary fails and the alarm triggers. | `string` | n/a | yes |
| <a name="input_runtime_version"></a> [runtime\_version](#input\_runtime\_version) | Runtime version of the canary. Details: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_nodejs_puppeteer.html | `string` | `"syn-nodejs-puppeteer-7.0"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | The subnet ids used by the lambda executing the code of the canary. | `list(string)` | n/a | yes |
| <a name="input_take_screenshot"></a> [take\_screenshot](#input\_take\_screenshot) | If screenshot should be taken | `bool` | `false` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The vpc used by the lambda executing the code of the canary. | `string` | n/a | yes |

## Outputs

No outputs.
