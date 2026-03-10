provider "aws" {
  region = var.aws_region
}

# module "web_sg" {
#   source = "./modules/security-group"

#   name        = var.sg_name
#   description = var.sg_description
#   vpc_id      = var.vpc_id

#   ingress_rules = var.ingress_rules
#   egress_rules  = var.egress_rules
#   tags = var.tags
# }

module "windows_ec2" {
  source             = "./modules/windows-ec2"
  name               = "windows-server"
  ami_id             = "ami-031283482dcfced88"
  instance_type      = "t3.medium"
  #subnet_id          = "subnet-083f87ee050011a2e"
  security_group_id  = "sg-0324f45bb64614a69"
  key_name           = "cloudwatch"
  instance_count     = 1
  tags               = var.tags
  #depends_on = [module.web_sg]
}