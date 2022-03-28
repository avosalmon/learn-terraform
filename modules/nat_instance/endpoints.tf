resource "aws_vpc_endpoint" "s3" {
  count           = var.s3_endpoint ? local.num_azs : 0
  vpc_id          = var.vpc_id
  service_name    = "com.amazonaws.${data.aws_region.current.name}.s3"
  auto_accept     = true
  route_table_ids = [aws_route_table.nat[count.index].id]
  tags            = local.tags
}
