resource "aws_autoscaling_group" "nat_instance" {
  count              = local.num_azs
  name_prefix        = local.name
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1
  availability_zones = [local.availability_zones[count.index]]

  launch_template {
    id      = aws_launch_template.nat_instance[count.index].id
    version = aws_launch_template.nat_instance[count.index].latest_version
  }
}
