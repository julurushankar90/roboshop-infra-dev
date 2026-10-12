/* resource "aws_ssm_parameter" "mongodb_sg_id" {
  name  = "/roboshop/dev/mongodb_sg_id"
  type  = "String"
  value = module.sg.sg_id
} */

resource "aws_ssm_parameter" "sg_id" {
  count = length(var.sg_names)
  name  = "/roboshop/dev/${var.sg_names[count.index]}_sg_id"
  type  = "String"
  value = module.sg[count.index].sg_id
}