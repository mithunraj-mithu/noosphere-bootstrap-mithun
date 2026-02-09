
resource "aws_instance" "server" {

  for_each = var.instances
  ami = data.aws_ami.amazon_linux
  instance_type = each.value.instance_type
  
}
