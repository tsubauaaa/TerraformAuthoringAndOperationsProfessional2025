terraform {
  backend "s3" {
    bucket = "tsubauaaa-tfstate"
    key    = "tsubauaaa/eip.tfstate"
    region = "ap-northeast-1"
  }
}
