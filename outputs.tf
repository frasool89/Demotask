output "vpc_public_subnet"{
    description ="ids of public subnet"
    value = module.vpc.public_subnets

}

