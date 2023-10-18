## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_fortimanager"></a> [fortimanager](#requirement\_fortimanager) | 1.8.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_fortimanager"></a> [fortimanager](#provider\_fortimanager) | 1.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [fortimanager_dvm_cmd_update_device.refreshDevice](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/dvm_cmd_update_device) | resource |
| [fortimanager_exec_workspace_action.lockADOM](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/exec_workspace_action) | resource |
| [fortimanager_exec_workspace_action.unlockADOM](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/exec_workspace_action) | resource |
| [fortimanager_json_generic_api.authDevice](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/json_generic_api) | resource |
| [fortimanager_json_generic_api.createADOM](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/json_generic_api) | resource |
| [fortimanager_json_generic_api.getADOM](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/json_generic_api) | resource |
| [fortimanager_json_generic_api.updateDeviceDB](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/json_generic_api) | resource |
| [fortimanager_object_cli_template.Edge-Overlay](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Edge-Routing](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Edge-Underlay](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Hub-MultiRegion](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Hub-Overlay](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Hub-Routing](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Hub-Underlay](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_template.Project](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_template) | resource |
| [fortimanager_object_cli_templategroup.Edge-Template](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_templategroup) | resource |
| [fortimanager_object_cli_templategroup.Hub-Template](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_cli_templategroup) | resource |
| [fortimanager_object_fmg_variable.createMetadata](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/object_fmg_variable) | resource |
| [fortimanager_system_global.workspace](https://registry.terraform.io/providers/fortinetdev/fortimanager/1.8.0/docs/resources/system_global) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cli-template-project-variables"></a> [cli-template-project-variables](#input\_cli-template-project-variables) | Project Variables | `list(string)` | <pre>[<br>  "lan_ip_edu",<br>  "lan_ip_fin",<br>  "mpls_wan_ip",<br>  "hostname",<br>  "profile",<br>  "region",<br>  "loopback",<br>  "mpls_wan_gateway",<br>  "inbandwidth",<br>  "shaping_profile",<br>  "outbandwidth"<br>]</pre> | no |
| <a name="input_createADOM"></a> [createADOM](#input\_createADOM) | n/a | `bool` | n/a | yes |
| <a name="input_createDevice"></a> [createDevice](#input\_createDevice) | n/a | `bool` | n/a | yes |
| <a name="input_deviceInfo"></a> [deviceInfo](#input\_deviceInfo) | n/a | <pre>object({<br>    name         = string<br>    adm_usr      = string<br>    adm_pass     = string<br>    platform_str = string<br>    sn           = string<br>  })</pre> | n/a | yes |
| <a name="input_pkg"></a> [pkg](#input\_pkg) | Package Details | `string` | `"managedByTerraform"` | no |
| <a name="input_provADOM"></a> [provADOM](#input\_provADOM) | Provision ADOMs | `string` | `"createdByTerraform"` | no |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | Tags to set for all resources | `map(string)` | <pre>{<br>  "environment": "dev",<br>  "project": "project-alpha"<br>}</pre> | no |
| <a name="input_workingADOM"></a> [workingADOM](#input\_workingADOM) | ADOMs | `string` | `"root"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_DeviceDB"></a> [DeviceDB](#output\_DeviceDB) | n/a |
| <a name="output_getADOM"></a> [getADOM](#output\_getADOM) | n/a |
