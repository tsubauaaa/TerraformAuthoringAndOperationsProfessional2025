data "terraform_remote_state" "networking_team" {
  backend = "s3"
  config = {
    bucket = "tsubauaaa-tfstate"
    key    = "tsubauaaa/eip.tfstate"
    region = "ap-northeast-1"
  }
}
