resource "aws_instance" "web_server" {
  ami                         = "ami-020cba7c55df1f615"
  instance_type               = var.instance_type
  key_name                    = "awskey"
  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    amazon-linux-extras install nginx1 -y
    systemctl start nginx
    systemctl enable nginx
    echo "<h1>Terraform EC2 Demo by Bhavika</h1>" > /usr/share/nginx/html/index.html
  EOF

  tags = {
    Name = "Terraform-Web-Server"
  }
}
