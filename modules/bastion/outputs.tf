
## launch template outputs
output "launch-template-id" {
  description = "Launch Template ID"
  value       = aws_launch_template.asg-launch-template.id
}

output "launch-template-latest-version" {
  description = "Launch Template ID"
  value       = aws_launch_template.asg-launch-template.latest_version
}

## Autoscaling Outputs
output "autoscaling-group-id" {
  description = "Autoscaling Group ID"
  value       = aws_autoscaling_group.asg-group.id
}

output "autoscaling-group-name" {
  description = "Autoscaling Group Name"
  value       = aws_autoscaling_group.asg-group.name
}

output "autoscaling-group-arn" {
  description = "Autoscaling Group Name"
  value       = aws_autoscaling_group.asg-group.arn
}

output "lb-id" {
  description = "ID of the load balancer"
  value       = aws_lb.nlb.id
}

output "lb-arn" {
  description = "ARN of the load balancer"
  value       = aws_lb.nlb.arn
}

output "lb-endpoint" {
  value = aws_lb.nlb.dns_name
}

output "bucket-kms-key-alias" {
  value = aws_kms_alias.alias.name
}

output "bucket-kms-key-arn" {
  value = aws_kms_key.key.arn
}

output "bucket-name" {
  value = aws_s3_bucket.bucket.bucket
}
