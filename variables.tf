variable "region" {
  description = "AWS region Eg: us-east-1"
  type        = string
  default     = ""
}

variable "project" {
  description = "Name of the project"
  default     = ""
}

###### VPC Variables ######

variable "aws_profile" {
  description = "Profile name of the AWS Account"
  type        = string
  default     = ""
}

variable "az_a" {
  description = "Availability Zone A"
  type        = string
  default     = ""
}

variable "az_b" {
  description = "Availability Zone B"
  type        = string
  default     = ""
}

variable "team" {
  description = "name of the team eg: front-end, devops, database"
  type        = string
  default     = ""
}

variable "env" {
  description = "name of the environment eg: development, uat, staging, production"
  type        = string
  default     = ""
}

variable "vpc_cidr" {
  description = "CIDR range of the vpc"
  type        = string
  default     = ""
}

variable "private_subnet_a" {
  type    = string
  default = ""
}

variable "private_subnet_b" {
  type    = string
  default = ""

}
variable "public_subnet_a" {
  type    = string
  default = ""
}

variable "public_subnet_b" {
  type    = string
  default = ""

}

variable "database_subnet_a" {
  type    = string
  default = ""
}

variable "database_subnet_b" {
  type    = string
  default = ""

}

