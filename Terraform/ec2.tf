resource "aws_instance" "gfgos" {
  ami           = var.aws_ami_id
  instance_type = var.aws_instance_type
  key_name        = aws_key_pair.gfg_key_pair.key_name
  tags = {
    Name = var.ec2_instance_name
  }
  subnet_id   = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.gfg-sg.id]
  count = 3
}

resource "aws_key_pair" "gfg_key_pair" {
  key_name   = "gfg43-new-key"
  public_key = file("./gfg.pub")
}

resource "aws_security_group" "gfg-sg" {
  name        = "gfg-security-group"
  vpc_id      = aws_vpc.gfg_vpc.id
  dynamic ingress {
  for_each = var.allowed_ingress_ports
  content {
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}