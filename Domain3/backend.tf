terraform {
  backend "s3" {
    bucket         = "tsubauaaa-tfstate"
    key            = "tsubauaaa/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "tsubauaaa-tfstate"
  }
}

resource "time_sleep" "wait_150_seconds" {
  create_duration = "150s"
}
