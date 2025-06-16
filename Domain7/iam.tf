resource "aws_iam_user" "lb" {
  name = "terraform-user"

}

resource "aws_iam_user_login_profile" "example" {
  user                    = "terraform-user"
  password_reset_required = true
}

resource "aws_iam_access_key" "example" {
  user = aws_iam_user.lb.name
}

resource "aws_iam_policy" "policy" {
  name = "terraform-managed-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "terraform-inline-pol"
  user = "terraform"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

# resource "aws_iam_policy" "policy_custom" {
#   name = "test-iam-policy"

#   policy = <<EOT
# {
#     "Version": "2012-10-17",
#     "Statement": [
#       {
#         "Action": [
#           "ec2:Describe*"
#         ],
#         "Effect": "Allow",
#         "Resource": "*"
#       }
#     ]
# }
#   EOT
# }

resource "aws_iam_policy" "policy_file" {
  name = "file-based-policy"

  policy = file("./ec2-describe.json")
}
