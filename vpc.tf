provider"aws"{
  region = "us-east-1"
  access_key = "******************"
  secret_key = "***************************"
}
terraform {
  backend "s3"{
    bucket = "myaws-bucket-state"
    key ="mystate/terraform.tfstate"
    region = "eu-west-2"
 }

#required_version = "0.14.4"

required_providers {
   aws = {
    source  = "hashicorp/aws"
    version = "~> 3.0"
   }
}
}
resource "aws_vpc" "demo"{
  cidr_block ="10.0.0.0/16"
  instance_tenancy = "default"

  tags ={
    Name = "Terraaform-demo"
  }
}
