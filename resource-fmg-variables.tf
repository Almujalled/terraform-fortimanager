resource "fortimanager_object_fmg_variable" "createMetadata" {
  description = "Metadata"
  for_each    = toset(var.cli-template-project-variables)
  name        = each.value
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = ""
  depends_on = [
    fortimanager_json_generic_api.createADOM
  ]
}

resource "fortimanager_object_fmg_variable" "makeMetadata-lan_ip_edu" {
  description = ""
  name        = "lan_ip_edu"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "10.0.0.1" # Default value
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "10.0.0.1"
  }
  depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]
}

resource "fortimanager_object_fmg_variable" "makeMetadata-lan_ip_fin" {
  description = ""
  name        = "lan_ip_fin"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "11.0.0.1" # Default value
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "11.0.0.1"
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-mpls_wan_ip" {
  description = ""
  name        = "mpls_wan_ip"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "12.0.0.1" # Default value
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "12.0.0.1"
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-hostname" {
  description = ""
  name        = "hostname"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "FGT" # Default value
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = var.deviceInfo.name
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-profile" {
  description = ""
  name        = "profile"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "Gold" # Default value
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "Gold"
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-region" {
  description = "Reagion Variable"
  name        = "region"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "East" # Default value
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "West"
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-loopback" {
  description = ""
  name        = "loopback"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "1.1.1.1"
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "1.1.1.1"
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-inbandwidth" {
  description = ""
  name        = "inbandwidth"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "5"
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "5"
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-mpls_wan_gateway" {
  description = ""
  name        = "mpls_wan_gateway"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "2.2.2.2"
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "2.2.2.2"
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-shaping_profile" {
  description = ""
  name        = "shaping_profile"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "Silver"
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "Silver"
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}

resource "fortimanager_object_fmg_variable" "makeMetadata-outbandwidth" {
  description = ""
  name        = "outbandwidth"
  scopetype   = "adom"
  adom        = var.workingADOM
  value       = "10"
  dynamic_mapping {
    _scope {
      name = var.deviceInfo.name
      vdom = "global"
    }
    value = "10"
  }
    depends_on = [ fortimanager_json_generic_api.updateDeviceDB ]

}