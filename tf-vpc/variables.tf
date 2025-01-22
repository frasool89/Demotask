
variable "vpc_name" {
  description = "Name of VPC."
  type        = string
  default     = "Faizan-DemoTest"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Az for vpc"
  type        = list(string)
  default     = ["us-east-2a","us-east-2b","us-east-2c"]
}


variable "vpc_public_subnet" {
  description = "public subnets for vpc."
  type        = list(string)
  default     = ["10.0.101.0/24","10.0.103.0/24"]
}

variable "vpc_tags" {
  description ="tags to apply to resources in vpc module"
  type        = map(string)
  default     = {
    "Terraform" = "true"
    "environment" = "dev"
  }
}
