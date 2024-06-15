provider "aws" {
  region              = "us-east-1"
  shared_config_files = ["~/.aws/credentials"]

}
terraform {
  backend "s3" {
    bucket = "gha-tf-saud"
    key = "statefile/terraform.tfstate"
    region = "us-east-1"
  }
}