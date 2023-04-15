data "aws.ami" "ami" {
  most_recent = true
  name_regex  = "centos-8-DevOps-practice"
  owners      = [ "973714476881"]
}

resource "aws_instance" "frontend" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "Frontend"
  }
}
