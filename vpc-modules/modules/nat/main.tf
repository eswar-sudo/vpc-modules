
resource "aws_eip" "nat" {
  count = var.single_nat_gateway ? 1 : length(var.public_subnet_ids)
  vpc = true
  tags = { 
    Name = "${var.vpc_name}-eip-${count.index}"
   }
}

resource "aws_nat_gateway" "nat" {
  count = var.single_nat_gateway ? 1 : length(var.public_subnet_ids)
  allocation_id = aws_eip.nat[count.index].id
  subnet_id = var.public_subnet_ids[var.single_nat_gateway ? 0 : count.index]
  tags = { 
    Name = "${var.vpc_name}-nat-gw-${count.index}" 
   }
}
