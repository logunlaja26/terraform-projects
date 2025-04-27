#Terraform to authenticate with aws
# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  profile = "terraform-user"
}


# stores terraform state file in S3
terraform {
  backend "s3" {
    bucket = "ly-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-2"
    profile = "terraform-user"
  }
}
