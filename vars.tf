variable "env" {
  description = "The environment to deploy"
  type        = "string"
}

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

variable "username" {
  description = "RDS username"
}

variable "password" {
  description = "RDS password"
}

variable "instance_class" {
  description = "RDS instance class (e.g. db.t2.micro or db.m4.xlarge)"
}

variable "multi_az" {
  description = "Create a replica in different zone if set to true"
}

variable "allocated_storage" {
  description = "The amount of allocated storage"
}

variable "skip_final_snapshot" {
  description = "Creates a snapshot when db is deleted if set to true"
}
