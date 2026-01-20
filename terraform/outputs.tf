output "vpc_id" {
  value = aws_vpc.main.id
}

output "ssm_db_password_param" {
  value = aws_ssm_parameter.db_password.name
}

# TODO: Add outputs for subnet IDs and EC2 instance IPs
