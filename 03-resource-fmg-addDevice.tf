resource "null_resource" "set_initial_state" {
    provisioner "local-exec" {
        interpreter = ["bash", "-c"]
        command = "echo \"0\" > current_state.txt"
    }
    depends_on = [ fortimanager_exec_workspace_action.lockADOM ]
}

resource "fortimanager_dvm_cmd_add_device" "addDevice" {
    for_each = var.device
    provisioner "local-exec" {
        interpreter = ["bash", "-c"]
        command = "while [[ $(cat current_device.txt) != \"${var.device.}\" ]]; do echo \"${length(var.device)} is waiting...\";sleep 5;done"
    }


  fmgadom  = var.workingADOM
  device {
    name         = each.value.name
    mgmt_mode    = each.value.mgmt_mode
    mr           = "0"
    deviceaction = each.value.deviceaction
    os_type      = each.value.os_type
    os_ver       = each.value.os_ver
    patch        = "0"
    platform_str = each.value.platform_str
    sn           = each.value.sn
  }
  depends_on = [null_resource.sequential_resources]

        provisioner "local-exec" {
        interpreter = ["bash", "-c"]
        command = "echo \"${count.index+1}\" > current_state.txt"
    }
}

#resource "fortimanager_dvm_cmd_add_device" "addDevice" {
#  fmgadom  = var.workingADOM
#  for_each = var.device
#  device {
#    name         = each.value.name
#    mgmt_mode    = each.value.mgmt_mode
#    mr           = "0"
#    deviceaction = each.value.deviceaction
#    os_type      = each.value.os_type
#    os_ver       = each.value.os_ver
#    patch        = "0"
#    platform_str = each.value.platform_str
#    sn           = each.value.sn
#  }
#  depends_on = [null_resource.sequential_resources]
#}

