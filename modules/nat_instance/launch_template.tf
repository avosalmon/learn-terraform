resource "aws_network_interface" "nat" {
  count             = local.num_azs
  subnet_id         = var.public_subnets[count.index].id
  source_dest_check = false
  security_groups   = [aws_security_group.nat[count.index].id]
  tags              = local.tags
}

resource "aws_eip" "public_ip_nat" {
  count             = local.num_azs
  vpc               = true
  network_interface = aws_network_interface.nat[count.index].id
  tags              = local.tags
}

resource "aws_launch_template" "nat_instance" {
  count         = local.num_azs
  name_prefix   = local.name
  image_id      = local.ami_image_id
  instance_type = local.instance_type
  tags          = local.tags

  network_interfaces {
    device_index         = 0
    network_interface_id = aws_network_interface.nat[count.index].id
  }

  tag_specifications {
    resource_type = "instance"
    tags          = local.tags
  }
}
