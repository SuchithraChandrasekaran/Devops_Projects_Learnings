output "public_ip" {
  value = aws_instance.this.public_ip
}

output "ssh_command" {
  value = "ssh ec2-user@${aws_instance.this.public_ip} -i ~/.ssh/${var.key_pair_name}.pem"
}

