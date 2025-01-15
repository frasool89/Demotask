terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
     
    }  
}
  required_version = ">= 1.10.4"
}

provider "aws" {
  region  = "us-east-1"
}

##using vpc module for aws

#module "vpc" {
  #source  = "terraform-aws-modules/vpc/aws"
  #version = "3.14.3"

  #name = var.vpc_name
  #cidr = var.vpc_cidr

  #azs                   = var.vpc_azs
  #public_subnets        = var.vpc_public_subnets

  #ags = var.vpc_tags
#}



module "autoscaling" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "8.0.0"
  
  name = "DemoTask"
}



  



