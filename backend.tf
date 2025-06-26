terraform {
  backend "s3" {
    bucket = "a1-the-source"
    key    = "ecs/terraform.tfstate"
    region = "us-east-1"
  }
}
