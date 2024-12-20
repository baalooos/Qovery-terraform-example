variable "region" {
  description = "The AWS region to deploy the resources in."
  default     = "eu-west-3" # Change the default as needed
}

variable "vpc_id" {
  description = "VPC Ids to create Security Groups"
  default = "vpc-xxx"
}

variable "vpc_cidr_block" {
  description = "CIDR for the SG"

}

variable "subnet_ids" {
  description = "Subnet Ids to create the Subnet Group"
  default     = ["subnet-xxx", "subnet-xxx", "subnet-xxx"]
}

variable "db_name" {
  description = "Name of the RDS instance"
  default     = "mydb"
}

variable "db_engine" {
  description = "RDS Engine"
  default     = "mysql"
}

variable "db_version" {
  description = "Engine version"
  default     = "8.0"
}

variable "db_instance" {
  description = "Instance type"
  default     = "db.t4g.micro"
}

variable "db_storage" {
  description = "Storage size"
  default     = "10"
}

variable "db_username" {
  description = "Username"
  default     = "foo"
}

variable "db_password" {
  description = "Password Value"
  # This is a simple example with hardcoded password. Not suitable for Production
  default = "foobarbaz"
}

variable "db_enable_bg" {
  description = "Enable Blue Green for this instance"
  default     = true
}
