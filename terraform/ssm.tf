resource "aws_ssm_parameter" "db_password" {
  name  = "/${var.environment}/${var.project}/db_password"
  type  = "SecureString"
  value = "0v^YUVwH#2puW05!0gcdY#Ja"
}

