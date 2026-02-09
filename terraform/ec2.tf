
resource "aws_instance" "server" {

  for_each      = var.instances
  ami           = data.aws_ami.amazon_linux.id
  instance_type = each.value.instance_type
  
  
  tags = merge(var.tags,

    {
      Name = "${var.project}-${var.environment}-${each.value.name}"
      

    }
  )

}
