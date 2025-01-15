
variable "vpc_name" {
  description = "Name of VPC."
  type        = string
  default     = "Faizan-DemoTest"
}


variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Az for vpc"
  type        = list(string)
  default     = ["us-east-1a","us-east-1b","us-east-1c"]
}


variable "vpc_public_subnet" {
  description = "public subnets for vpc."
  type        = list(string)
  default     = ["10.0.101.0/24","10.0.102.02.24"]
}

variable "vpc_tags{
  description ="tags to apply to resources in vpc module"
  type        = map(string)
  default     = {
    "Terraform" = "true"
    "environment" = "dev"
  }
}
