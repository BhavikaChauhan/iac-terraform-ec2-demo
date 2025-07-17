resource "aws_instance" "web_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  associate_public_ip_address = true

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
