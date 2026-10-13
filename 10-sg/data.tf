data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}/${var.environment}/vpc_id"
}

data "aws_ssm_parameter" "bastion_sg_id" {
  name = "/roboshop/dev/bastion_sg_id"
}

data "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/roboshop/dev/mongodb_sg_id"
}