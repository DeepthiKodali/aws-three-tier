variable "vpc_cidr" {
  description = "The cidr range for vpc"
  type        = "string"
}

variable "public_subnet_b_cidr" {
  description = "The cidr range for public subnet b"
  type        = "string"
}

variable "public_subnet_c_cidr" {
  description = "The cidr range for public subnet c"
  type        = "string"
}

variable "private_subnet_b_cidr" {
  description = "The cidr range for private subnet b"
  type        = "string"
}

variable "private_subnet_c_cidr" {
  description = "The cidr range for private subnet c"
  type        = "string"
}

variable "db_subnet_b_cidr" {
  description = "The cidr range for db subnet b"
  type        = "string"
}

variable "db_subnet_c_cidr" {
  description = "The cidr range for db subnet c"
  type        = "string"
}
