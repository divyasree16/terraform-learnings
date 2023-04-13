resource "aws_instance" "frontend" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "Frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "frontend-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "mongodb-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "cart" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "cart-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "catalogue" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "catalogue-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "user-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "shipping" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "shipping-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "payment" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "payment-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "rabbitmq-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "mysql" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "mysql-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "redis" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "redis-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "dispatch" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z039916038KM3J6GJYRJC"
  name    = "dispatch-dev.devops161997.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}

