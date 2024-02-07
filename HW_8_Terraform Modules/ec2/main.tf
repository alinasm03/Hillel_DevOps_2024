#Instances
resource "aws_instance" "instance_public" {
  ami = data.aws_ami.ubuntu.id
  instance_type               = var.public_instance_type
  subnet_id                   = var.public_subnet_id
  associate_public_ip_address = true
  tags = {
    Name = "${var.configuration}-${var.environment}-public-instance"
  }
}

resource "aws_instance" "instance_private" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.private_instance_type
  subnet_id     = var.private_subnet_id
  tags = {
    Name = "${var.configuration}-${var.environment}-private-instance"
  }
}