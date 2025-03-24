variable "vpc_id" {
 type = string 
}

variable "azs" { 
 type = list(string)
 }

variable "vpc_cidr" { 
 type = string 
}

variable "vpc_name" {
  type = string
}

variable "map_public_ip_on_launch" {
  type = bool
}
