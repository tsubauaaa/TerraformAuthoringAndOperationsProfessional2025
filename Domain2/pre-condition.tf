data "aws_ec2_instance_type" "example" {
  instance_type = "t3.micro"
}

output "instance_type" {
  value = data.aws_ec2_instance_type.example.free_tier_eligible
}

resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami           = "ami-001168f7f3b63f0cc"

  lifecycle {

    # precondition {
    #   condition     = data.aws_ec2_instance_type.example.free_tier_eligible
    #   error_message = "The instance type is not eligible for the free tier."
    # }
    postcondition {
      condition     = self.public_ip != ""
      error_message = "The instance must have a public IP address."
    }
  }
}
