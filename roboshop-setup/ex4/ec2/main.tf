data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = [ "973714476881"]
}

resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.ami.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = var.component
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "${var.component}-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "component" {}
variable "instance_type" {}



