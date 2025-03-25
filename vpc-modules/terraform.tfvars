region     = "us-east-2"
vpc_cidr   = "20.0.0.0/16"
azs    	   = ["us-east-2a", "us-east-2b"]
vpc_name   = "aws"
single_nat_gateway   = true
enable_dns_support   = true
enable_dns_hostnames = true
map_public_ip_on_launch = true
public_destination_cidr_block = "0.0.0.0/0"
private_destination_cidr_block = "0.0.0.0/0" 

