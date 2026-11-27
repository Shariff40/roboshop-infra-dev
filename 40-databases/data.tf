data "aws_ami" "joindevops" {
    most_recent = true
    owners      = ["973714476881"]

    filter {
        name   = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
  
}

data "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/roboshop/dev/mongodb_sg_id"
}

data "aws_ssm_parameter" "redis_sg_id" {
  name = "/roboshop/dev/redis_sg_id"
}

data "aws_ssm_parameter" "database_subnet_ids" {
  name = "/roboshop/dev/database_subnet_ids"
}

data "aws_ssm_parameter" "sg_id" {
  name = "/roboshop/dev/bastion_sg_id"
}
data "aws_ssm_parameter" "bastion_sg_id" {
  name = "/roboshop/dev/bastion_sg_id"
}

