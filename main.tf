resource "aws_instance" "web_server" {
  ami                         = "ami-id"
  instance_type               = var.instance_type
  key_name                    = "Key"
  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = <<-EOF
    #!/bin/bash
    apt-get update -y
    apt-get install nginx -y
    systemctl start nginx
    systemctl enable nginx
    echo "<h1>Terraform EC2 Demo by Bhavika</h1>" > /var/www/html/index.nginx-debian.html
  EOF

  tags = {
    Name = "Terraform-Web-Server"
  }
}
