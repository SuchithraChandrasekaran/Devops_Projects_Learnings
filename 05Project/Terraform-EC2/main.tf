resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_pair_name
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }
}

