provider "aws" {

    region = var.region
  
}

terraform {
  backend "s3" {
    bucket = "terraformbucket-22"
    key = "terraform.tfstate"
    region = "ap-south-1"  
    dynamodb_table = "mytable"	  
  }
}

resource "aws_vpc" "myterraformvpc" {
    cidr_block = var.cidr_block
    instance_tenancy = var.instance_tenancy
  
}