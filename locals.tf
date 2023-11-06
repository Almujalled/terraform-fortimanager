locals {
 services = jsondecode(file("${path.module}/Domain.json"))["Domain"]["Services"]
}