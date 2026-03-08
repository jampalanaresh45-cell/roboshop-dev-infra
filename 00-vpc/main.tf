<<<<<<< HEAD
module "vpc" {
    source = "git::https://github.com/jampalanaresh45-cell/terraform-aws-vpc.git?ref=main"
   
   
   ### vpc creation
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

    ## Public subnets
    public_subnet_cidrs =  var.public_subnet_cidrs

    ## Private subnets
    private_subnet_cidrs =  var.private_subnet_cidrs

    ## Database subnets
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = true

}



=======
module "catalogue" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${local.common_name_suffix}-catalogue"
  description = "Security group for catalogue with custom ports open with in vpc, egress all traffic"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

}
>>>>>>> f7af98f634f4d9a46e284366d254140b395c1fbd
