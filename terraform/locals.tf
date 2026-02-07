locals {
  subnet_ids = {
    db  = aws_subnet.public_subnet[0].id
    web = aws_subnet.public_subnet[1].id
    app = aws_subnet.public_subnet[2].id
  }
}
