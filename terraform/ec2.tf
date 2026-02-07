# EC2 Instances
# Data source to get latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}


resource "aws_instance" "server" {
  for_each = var.instances
  ami      = data.aws_ami.amazon_linux.id

  instance_type = each.value.instance_type

  tags = merge(var.tags,

    {
      Name = "${each.key}-${var.environment}"

    }
  )

}