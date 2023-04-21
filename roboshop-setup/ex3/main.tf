data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = [ "973714476881"]
}

resource "aws_instance" "instances" {
  for_each                  = var.instances
  ami                    = data.aws_ami.ami.image_id
  instance_type          = each.value["type"]
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = each.value["name"]
  }
}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.micro"
    }
  }
}

//to get output of catalogue public ip. run below code
//output "ec2" {
//value = aws_instance.instances ["catalogue"].public_ip
//}

#to get output of public ip for all the instances run below code using loops
output "ec2" {
  value = [for k, v in aws_instance.instances : v.public_ip]
}