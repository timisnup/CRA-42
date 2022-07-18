#First instance
resource "aws_instance" "instance" {
  ami                         = var.instance_ami
  instance_type               = "t2.micro"
  key_name                    = "timmie"
  subnet_id                   = aws_subnet.pub-sub-1.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.sec-group.id]


  tags = {
    Name = "myinstance"
  }
}
