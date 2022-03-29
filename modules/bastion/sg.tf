resource "aws_security_group" "asg-sg" {
  vpc_id      = var.vpc_id
  description = "Bastion Autoscaling Security Group"

  ingress {
    description = "Open SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block, var.access_ip] // private app ip
  }

  ingress {
    description = "Open HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block, var.access_ip] // add a personal private ip for private app and db
  }

  ingress {
    description = "Open MySQL Port"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block, var.access_ip]
  }

  ingress {
    description = "Open Redis Port"
    from_port      = 6379
    to_port        = 6379
    protocol       = "tcp"
    cidr_blocks    = [var.vpc_cidr_block, var.access_ip]
  }

  egress {
    description = "Open SSH Outbound"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Open HTTP port 80 Outbound"
    from_port      = 80
    to_port        = 80
    protocol       = "tcp"
    cidr_blocks    = ["0.0.0.0/0"]
  }

  egress {
    description = "Open HTTPS Outbound"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Open MySQL Port Outbound"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Open Redis Port Outbound"
    from_port      = 6379
    to_port        = 6379
    protocol       = "tcp"
    cidr_blocks    = ["0.0.0.0/0"]
  }
}
