variable "aws_region" {
  default = "us-east-1"  # N. Virginia
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  # Amazon Linux 2023 (x86_64) in us-east-1
  default = "ami-0c7217cdde317cfec"
}

variable "key_pair_name" {
  description = "ansible-key"
  type        = string
}

variable "instance_name" {
  default = "terraform-ec2"
}

