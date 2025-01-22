output "vpc_public_subnet"{
    description ="ids of public subnet"
    value = module.vpc.public_subnets

                          }

output "vpc_azs"{
    description ="Az of VPC Block"
    value = module.vpc.azs
                }

output "asg_name"{
    description ="Name of Asg"
    value = module.asg.name
                }
