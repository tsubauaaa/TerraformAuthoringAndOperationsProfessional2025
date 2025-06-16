resource "local_file" "with_jsonencode" {
  filename = "./json-encode.json"
  content = jsonencode({
    name   = "Alice"
    age    = 30
    skills = ["Terraform", "AWS", "Azure"]
  })
}

locals {
  content = file("./sample.json")
  decode  = jsondecode(local.content)
}

output "jsondecode" {
  value = local.decode
}
