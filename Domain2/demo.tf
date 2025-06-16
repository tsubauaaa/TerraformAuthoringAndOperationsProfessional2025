locals {
  config = jsondecode(file("${path.module}/config.json"))
}

output "usecase01" {
  value = [for data in local.config : data]
}

output "usecase02" {
  value = [for data in local.config.servers : data.name]
}

output "usecase03" {
  value = [for data in local.config.servers : data.ip]
}

output "usecase04" {
  value = [for data in local.config.servers : data.ip if data.metadata.environment == "production"]
}

output "usecase05" {
  value = distinct(flatten([for data in local.config.servers : data.roles]))
}

output "usecase06" {
  value = [for data in local.config.servers : "${data.name} (${data.metadata.environment})"]
}

output "usecase07" {
  value = [for data in local.config.servers : "${data.ip} roles: ${join(",", data.roles)}"]
}
