# configure aws provider
provider "aws" {
  region  = var.region
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "huso-shack-s3"
    key            = "eks.terraform.tfstate"
    region         = "eu-central-1"
    
  }
}
