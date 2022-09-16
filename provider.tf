# Download the provider files for AWS
terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"
      version = "~> 4.30.0"
    }
  }
}

terraform {
  backend "s3" {
    # TF state files gets uploaded in this bucket !!!
    
    bucket         = "terraform-backend-state-ps07101971"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"

  }
}

provider "aws" {

  region = var.AWS_REGION
}
