locals {
    ami_id = data.aws_ami.joindevops.id
    public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_id.value)[0]
    common_tags = { 
        project = var.project
        environment = var.environment
        terraform = "true"
        name = "${var.project}-${var.environment}-bastion"
    }
 
}