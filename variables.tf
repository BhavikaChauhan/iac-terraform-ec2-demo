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
  description = "ami-020cba7c55df1f615"
  type        = string
}
