#File to Input the Variables that will be used across all .tf files

variable "AWS_REGION" {

  default = "us-east-1"
}


variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "INSTANCE_COUNT" {
  default = 1
}

variable "AMI" {

  default = {

    us-east-1 = "ami-052efd3df9dad4825"
    eu-west-2 = "ami-0fb391cce7a602d1f"
  }
}

variable "PRIVATE_KEY_PATH" {

  default = "/home/pankajsharma/terraform/keys/key-pair-01"

}

variable "PUBLIC_KEY_PATH" {

  default = "/home/pankajsharma/terraform/keys/key-pair-01.pub"

}

variable "EC2_USER" {

  default = "ubuntu"
}
