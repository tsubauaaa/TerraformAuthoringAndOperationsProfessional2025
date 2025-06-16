resource "aws_launch_template" "this" {
  name                 = "terraform-launch-template"
  image_id             = "ami-12345678"
  instance_type        = "t2.micro"
  security_group_names = ["sg-12345678"]
}

resource "aws_autoscaling_group" "bar" {
  availability_zones = ["ap-north-1a", "ap-north-1b"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }
}
