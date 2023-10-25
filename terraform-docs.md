<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_fortimanager"></a> [fortimanager](#requirement\_fortimanager) | 1.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_fortimanager"></a> [fortimanager](#provider\_fortimanager) | 1.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [fortimanager_dvm_cmd_add_device.addDevice](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/dvm_cmd_add_device) | resource |
| [fortimanager_dvmdb_adom.manageADOM](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/dvmdb_adom) | resource |
| [fortimanager_exec_workspace_action.lockADOM](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/exec_workspace_action) | resource |
| [fortimanager_exec_workspace_action.unlockADOM](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/exec_workspace_action) | resource |
| [fortimanager_json_generic_api.updateDevice](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/json_generic_api) | resource |
| [fortimanager_object_cli_template.Edge-Overlay](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Edge-Routing](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Edge-Underlay](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Hub-MultiRegion](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Hub-Overlay](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Hub-Routing](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Hub-Underlay](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Project](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_templategroup.Edge-Template](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_templategroup) | resource |
| [fortimanager_object_cli_templategroup.Hub-Template](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_cli_templategroup) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-hostname](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-inbandwidth](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-lan_ip_edu](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-lan_ip_fin](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-loopback](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-mpls_wan_gateway](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-mpls_wan_ip](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-outbandwidth](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-profile](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-region](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_object_fmg_variable.makeMetadata-shaping_profile](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/object_fmg_variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cli-template-project-variables"></a> [cli-template-project-variables](#input\_cli-template-project-variables) | Project Variables | `list(string)` | <pre>[<br>  "lan_ip_edu",<br>  "lan_ip_fin",<br>  "mpls_wan_ip",<br>  "hostname",<br>  "profile",<br>  "region",<br>  "loopback",<br>  "mpls_wan_gateway",<br>  "inbandwidth",<br>  "shaping_profile",<br>  "outbandwidth"<br>]</pre> | no |
| <a name="input_device"></a> [device](#input\_device) | n/a | <pre>map(object({<br>    type         = string<br>    count        = number<br>    name         = string<br>    adm_usr      = string<br>    adm_pass     = string<br>    platform_str = string<br>    sn           = string<br>    mgmt_mode    = string<br>    deviceaction = string<br>    os_type      = string<br>    os_ver       = string<br>    description  = string<br>    latitude     = string<br>    longitude    = string<br>    metadata = object(<br>      {<br>        address = string<br>        org     = string<br>        email   = string<br>        phone   = string<br>    })<br>  }))</pre> | n/a | yes |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | Tags to set for all resources | `map(string)` | <pre>{<br>  "environment": "dev",<br>  "project": "project-alpha"<br>}</pre> | no |
| <a name="input_workingADOM"></a> [workingADOM](#input\_workingADOM) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->