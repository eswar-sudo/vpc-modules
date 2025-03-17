variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.25.0.0/16"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "single_nat_gateway" {
  description = "Use a single NAT Gateway (true) or one per AZ (false)"
  type        = bool
  default     = true
}
