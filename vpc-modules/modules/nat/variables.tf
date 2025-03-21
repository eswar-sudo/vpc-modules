
variable "public_subnet_ids" { 
  type = list(string) 
 }

variable "single_nat_gateway" {
 type = bool 
 }

variable "vpc_name" {
 type =string
}
