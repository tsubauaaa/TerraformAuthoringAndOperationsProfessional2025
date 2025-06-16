# Example 1

locals {
  json_string1 = <<EOT
  {
    "name": "Mr A",
    "age": 30,
    "city": "Mumbai"
  }
  EOT

  decoded_json1 = jsondecode(local.json_string1)
}

output "decode" {
  value = local.decoded_json1["name"]
}

# Example 2
locals {
  json_string2 = <<EOT
  [
    "apple",
    "banana",
    "cherry"
  ]
  EOT

  decoded_json2 = jsondecode(local.json_string2)
}

output "decode_list" {
  value = local.decoded_json2[0]
}

# Example 3
locals {
  json_string3 = <<EOT
  [
    {"name": "Alice", "age": 30},
    {"name": "Bob", "age": 25},
    {"name": "Charlie", "age": 35}
  ]
  EOT

  decoded_json3 = jsondecode(local.json_string3)
}

output "decode_object_list" {
  value = local.decoded_json3[0]["name"]
}
