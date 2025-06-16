resource "local_file" "this" {
  #   content  = "The name of best friends are \"Alice\", and \"Bob\""
  #   content  = "The path of Terraform is \n C:\\kplabs-terraform"
  content  = "Item 1:\tValue 1, Item 2:\t"
  filename = "friends.txt"
}

resource "local_file" "heredoc" {
  filename = "sample-text.txt"
  content  = <<-EOT
  This is Line 1
  Now it becomes a multi-line document
  This is getting little confusing to read
  EOT
}

resource "local_file" "heredoc2" {
  filename = "heredoc.txt"
  content  = <<EOT
  This is Line 1
    This is Line 2
        This is Line 3
  EOT
}

resource "local_file" "indent" {
  filename = "indent.txt"
  content  = <<-EOT
  This is Line 1
    This is Line 2
        This is Line 3
  EOT
}
