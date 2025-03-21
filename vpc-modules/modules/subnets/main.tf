
resource "aws_subnet" "public" {
  count = length(var.azs)
  vpc_id = var.vpc_id
  cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index)
  availability_zone = var.azs[count.index]
  map_public_ip_on_launch = true
  tags = { 
     Name = "${var.vpc_name}-public-subnet-${var.azs[count.index]}" 
   }
}

resource "aws_subnet" "private" {
  count = length(var.azs)
  vpc_id = var.vpc_id
  cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index + length(var.azs))
  availability_zone = var.azs[count.index]
  tags = { 
    Name = "${var.vpc_name}-private-subnet-${var.azs[count.index]}" 
    }
}
