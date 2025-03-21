variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.25.0.0/16"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "vpc_name" {
  description = "Name of the vpc"
  type = string
  default = "eswar"
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "single_nat_gateway" {
  description = "Use a single NAT Gateway (true) or one per AZ (false)"
  type        = bool
  default     = true
}
