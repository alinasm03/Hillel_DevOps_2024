variable "aws_region" {
  description = ""
  default     = "us-east-2"
}

variable "configuration" {
  description = ""
  default     = "hillel"
}

variable "environment" {
  description = ""
  default     = "demo"
}

variable "vpc_cidr" {
  description = ""
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  description = ""
  default     = "t3.micro"
}