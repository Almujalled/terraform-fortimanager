locals {
    # get json 
    customer = jsondecode(file("${path.module}/jsons/customer.json"))
    # get all attributes
    attributes = [for customer in local.customer : customer]
    }
locals {
    # get json 
    inventory = jsondecode(file("${path.module}/jsons/inventory.json"))
    # get all devices
    devices = [for device in local.inventory : device]
}
output "devices" {
    value = local.devices
}
output "attributes" {
    value = local.customer
}