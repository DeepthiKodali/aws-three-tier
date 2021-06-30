variable "db_subnet_b" {
  description = "db_subnet_b"
}

variable "db_subnet_c" {
  description = "db_subnet_c"
}

variable "db_security_group" {
  description = "db_security_group"
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
