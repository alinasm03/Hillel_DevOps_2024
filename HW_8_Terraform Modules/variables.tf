variable "configuration" {
  description = ""
  default     = "hillel"
}

variable "environment" {
  description = ""
  default     = "demo"
}

variable "public_instance_type" {
  description = ""
  default = "t3.micro"
}

variable "private_instance_type" {
  description = ""
  default = "t3.micro"
}

variable "vpc_cidr" {
  description = ""
  default = "10.0.0.0/16"
}

variable "vpc_private_cidr" {
  description = ""
  default = "10.0.101.0/24"
}

variable "vpc_public_cidr" {
  description = ""
  default = "10.0.1.0/24"
}