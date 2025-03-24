variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_name" {
  description = "Name of the vpc"
  type = string
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "single_nat_gateway" {
  description = "Use a single NAT Gateway (true) or one per AZ (false)"
  type        = bool
}

variable "enable_dns_support"
  type = bool
}

variable "enable_dns_hostnames"
  type =bool
}
