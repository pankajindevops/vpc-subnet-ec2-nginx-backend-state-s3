# Download the provider files for AWS
terraform {

  required_providers {

    aws = {

      source = "hashicorp/aws"
      // version = "~> 4.30.0"
      version = "~> 3.74.2"
    }
  }
}

terraform {
  backend "s3" {

    # TF state files gets uploaded in this bucket !!!

    bucket = "terraform-backend-state-ps-oct1971"
    key    = "dev.terraform.tfstate"
    region = "eu-west-2"

  }
}

provider "aws" {

  region = var.AWS_REGION
}
