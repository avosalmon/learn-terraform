resource "aws_route_table" "nat" {
  count  = local.num_azs
  vpc_id = var.vpc_id
  tags   = local.tags
}

resource "aws_route" "internet" {
  count                  = local.num_azs
  route_table_id         = aws_route_table.nat[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  network_interface_id   = aws_network_interface.nat[count.index].id
}
