terraform {
  backend "s3" {
    bucket = "terraform-rohdevops"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}