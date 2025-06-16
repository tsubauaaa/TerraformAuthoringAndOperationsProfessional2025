resource "aws_iam_policy" "policy_custom_2" {
  name = "test-iam-policy"

  policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": [
          "ec2:Describe*"
        ],
        "Effect": "Allow",
        "Resource": "*"
      }
    ]
}
  EOT
}

data "aws_iam_policy_document" "example" {
  statement {
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "policy_custom" {
  name = "tf-data-policy"

  policy = data.aws_iam_policy_document.example.json
}

