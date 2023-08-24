terraform {
  backend "s3" {
    bucket = "terraform-rohdevops"
    key = "params/terraform.tfstate"
    region = "us-east-1"
  }
}