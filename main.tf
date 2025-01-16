terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
          }  
                    }
  required_version = ">= 1.10.4"
          }

provider "aws" {
  region  = "us-east-2"
              }

##using vpc module for aws

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.17.0"

  name = var.vpc_name
  

  azs                  = var.vpc_azs
  public_subnets        = var.vpc_public_subnet
  tags                 = var.vpc_tags
            }

#Autoscaling submodule being used
 module "autoscaling" {
                source          = "terraform-aws-modules/autoscaling/aws"
                version         = "8.0.0"
                image_id        = "ami-0c096ca5a3fbca310"
                instance_type   = "t2.micro"

                vpc_zone_identifier       =   module.vpc.public_subnets
                name               = "FaizanTask1"
                instance_name      = "FaizanTask1"
              
                desired_capacity   = 1
                max_size           = 2
                min_size           = 1

                      }