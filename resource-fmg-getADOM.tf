resource "fortimanager_json_generic_api" "getADOM" {
  json_content = <<JSON
{
  "method": "get",
  "params": [
    {
      "option": "{option}",
      "url": "/dvmdb/adom/${var.workingADOM}"
    }
  ]
}
JSON
  depends_on = [
    fortimanager_json_generic_api.createADOM
  ]
}