region     = "us-east-1"
vpc_cidr   = "20.10.0.0/16"
azs    	   = ["us-east-1a", "us-east-1b"]
vpc_name   = "eks-karpenter-spacelift"
single_nat_gateway   = true
enable_dns_support   = true
enable_dns_hostnames = true
map_public_ip_on_launch = true
public_destination_cidr_block = "0.0.0.0/0"
private_destination_cidr_block = "0.0.0.0/0" 

