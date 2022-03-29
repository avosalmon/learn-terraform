###### Target Tracking Scaling Policies ######
# TTS - Scaling Policy-1: Based on CPU Utilization
# Define Autoscaling Policies and Associate them to Autoscaling Group
resource "aws_autoscaling_policy" "avg-cpu-policy-greaterthan-50" {
  name                      = "avg-cpu-policy-greater-than-50"
  policy_type               = "TargetTrackingScaling"
  autoscaling_group_name    = aws_autoscaling_group.asg-group.name
  estimated_instance_warmup = var.warmup # defaults to ASG default cooldown 300 seconds if not set

  # Average CPU Utilization is above 50
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 50.0 # percent value
  }
}

# resource "aws_autoscaling_policy" "nlb-target-requests-greaterthan-50" {
#   name                      = "nlb-target-requests-greater-than-50"
#   policy_type               = "TargetTrackingScaling"
#   autoscaling_group_name    = aws_autoscaling_group.asg-group.name
#   estimated_instance_warmup = var.warmup # defaults to ASG default cooldown 300 seconds if not set

#   # Average CPU Utilization is above 50
#   target_tracking_configuration {
#     predefined_metric_specification {
#       predefined_metric_type = "ALBRequestCountPerTarget"
#       resource_label         = "${aws_lb.nlb.arn_suffix}/${aws_lb_target_group.nlb-tg.arn_suffix}"
#     }
#     target_value = 50.0 # percent value
#   }
# }
