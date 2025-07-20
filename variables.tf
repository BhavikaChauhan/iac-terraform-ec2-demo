variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "awskey"
  type        = string
}

variable "ami_id" {
  description = "ami-id"
  type        = string
}
