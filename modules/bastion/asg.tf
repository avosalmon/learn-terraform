# Autoscaling Group Resource
resource "aws_autoscaling_group" "asg-group" {
  # Autoscaling group
  name = "bastion-asg"

  min_size                  = var.min_size
  max_size                  = var.max_size
  desired_capacity          = var.desired_capacity
  wait_for_capacity_timeout = 0
  health_check_type         = "EC2"
  health_check_grace_period = var.warmup # default is 300 seconds

  # A list of subnet IDs to launch resources in. Subnets automatically determine which availability zones the group will reside
  vpc_zone_identifier = var.public_subnets[*].id # subnets reference from network module - All public subnets where instances are created

  # Associate Load balancer target group to ASG
  target_group_arns = [aws_lb_target_group.nlb-tg.arn] #  NLB Target Group Arn (optional parameter)

  launch_template {
    id      = aws_launch_template.asg-launch-template.id
    version = aws_launch_template.asg-launch-template.latest_version
  }

  # Instance refresh
  instance_refresh {
    strategy = "Rolling"
    preferences {
      instance_warmup        = var.warmup
      min_healthy_percentage = 50
    }
    triggers = ["desired_capacity"] # change trigger - can add more arguments
  }

  tag {
    key                 = "Environment"
    value               = "Staging"
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [aws_s3_bucket.bucket]
}
