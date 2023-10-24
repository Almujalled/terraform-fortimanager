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
| [fortimanager_json_generic_api.updateDeviceDB](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.9.0/docs/resources/json_generic_api) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cli-template-project-variables"></a> [cli-template-project-variables](#input\_cli-template-project-variables) | Project Variables | `list(string)` | <pre>[<br>  "lan_ip_edu",<br>  "lan_ip_fin",<br>  "mpls_wan_ip",<br>  "hostname",<br>  "profile",<br>  "region",<br>  "loopback",<br>  "mpls_wan_gateway",<br>  "inbandwidth",<br>  "shaping_profile",<br>  "outbandwidth"<br>]</pre> | no |
| <a name="input_deviceInfo"></a> [deviceInfo](#input\_deviceInfo) | n/a | <pre>object({<br>    name         = string<br>    adm_usr      = string<br>    adm_pass     = string<br>    platform_str = string<br>    sn           = string<br>    mgmt_mode    = string<br>    deviceaction = string<br>    os_type      = string<br>    os_ver       = string<br>  })</pre> | n/a | yes |
| <a name="input_methodAPI"></a> [methodAPI](#input\_methodAPI) | n/a | `string` | `"add"` | no |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | Tags to set for all resources | `map(string)` | <pre>{<br>  "environment": "dev",<br>  "project": "project-alpha"<br>}</pre> | no |
| <a name="input_workingADOM"></a> [workingADOM](#input\_workingADOM) | ADOMs | `string` | `"ManagedByTerraform"` | no |

## Outputs

No outputs.
