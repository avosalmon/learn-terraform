resource "aws_lb" "nlb" {
  name                             = "network-load-balancer"
  load_balancer_type               = "network"
  internal                         = false
  subnets                          = var.public_subnets[*].id
  enable_cross_zone_load_balancing = true
}

resource "aws_lb_listener" "nlb-listener" {
  load_balancer_arn = aws_lb.nlb.arn
  protocol          = "TCP"
  port              = var.ssh_port

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.nlb-tg.arn
  }

}

resource "aws_lb_target_group" "nlb-tg" {
  port     = var.ssh_port
  protocol = "TCP"
  vpc_id   = var.vpc_id

  depends_on = [
    aws_lb.nlb
  ]

  lifecycle {
    create_before_destroy = true
    ignore_changes        = [name]
  }
}

resource "aws_autoscaling_attachment" "target-ssh" {
  autoscaling_group_name = aws_autoscaling_group.asg-group.id
  lb_target_group_arn    = aws_lb_target_group.nlb-tg.arn // https target group
}
