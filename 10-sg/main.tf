# /* module "catalogue" {
#   source = "terraform-aws-modules/security-group/aws"

#   name        = "${local.common_name_suffix}-catalogue"
#   use_name_prefix = false
#   description = "Security group for catalogue with custom ports open with in vpc, egress all traffic"
#   vpc_id      = data.aws_ssm_parameter.vpc_id.value
# } */

module "sg" {
  count = length(var.sg_names)
  source = "git::https://github.com/jampalanaresh45-cell/terraform-aws-sg.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name =  var.sg_names[count.index]
  sg_description = "created for ${var.sg_names[count.index]}"
  vpc_id = local.vpc_id
}

####frontend access traffic from frontend alb #####
# resource "aws_vpc_security_group_rule" "frontend_frontend_alb" {
#   type              = "ingress"
#   security_group_id = module.sg[9].sg_id    ##sg_ID
#   source_security_group_id = module.sg[11].sg_id  ##Frontend SG ALB_ID
#   from_port         = 80
#   protocol          = "tcp"
#   to_port           = 80
# }

##Frontend accepting traffic from frontend ALB
# resource "aws_security_group_rule" "frontend_frontend_alb" {
#   type              = "ingress"
#   security_group_id = module.sg[9].sg_id # frontend SG ID
#   source_security_group_id = module.sg[11].sg_id # frontend ALB SG ID
#   from_port         = 80
#   protocol          = "tcp"
#   to_port           = 80
# }