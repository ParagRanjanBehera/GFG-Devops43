variable "aws_ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  default     = "ami-0685bcc683dadb6b9"
}

variable "aws_instance_type" {
  description = "The type of instance to use for the EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "aws_key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
  default     = "testkeygfg"
}

variable "ec2_instance_name" {
  description = "The name of the EC2 instance"
  type        = string
  default     = "Ec2Instance"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "route_table_allowed_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "0.0.0.0/0"
}

variable "allowed_ingress_ports" {
  description = "List of allowed ingress ports for the security group"
  type        = list(number)
  default     = [80, 81, 22, 443, 8080, 6243, 3306, 5432, 9090, 9000, 6379, 27017, 9200, 9300]
}