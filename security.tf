// security.tf

// 1️⃣ Look up the default VPC
data "aws_vpc" "default" {
  default = true
}

// 2️⃣ Define the SG that allows SSH + HTTP
resource "aws_security_group" "web_sg" {
  name        = "iac-web-ssh-http-sg"
  description = "Allow SSH and HTTP from anywhere"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "iac-web-ssh-http-sg"
  }
}
