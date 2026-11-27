locals {
  ami_id           = data.aws_ami.joindevops.id
  public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_id.value)[0]
  bastion_sg_id    = data.aws_ssm_parameter.sg_id.value

  common_tags = {
    project     = var.project
    environment = var.environment
    terraform   = "true"
    Name        = "${var.project}-${var.environment}-bastion"
  }

}