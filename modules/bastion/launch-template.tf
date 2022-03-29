# Launch Template
data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]
  name_regex  = "^amzn2-ami-hvm.*-ebs"

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_launch_template" "asg-launch-template" {
  name        = "Bastion-asg-launch-template"
  description = "Bastion ASG Launch Template"

  image_id      = data.aws_ami.amazon-linux-2.id # Amazon-linux2 AMI
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.asg-sg.id]
  key_name               = var.bastion_key

  ebs_optimized          = false
  update_default_version = true

  user_data = base64encode(templatefile("${path.module}/templates/userdata.sh", {
    aws_region              = var.region
    bucket_name             = var.bucket_name
    extra_user_data_content = var.extra_user_data_content
    allow_ssh_commands      = lower(var.allow_ssh_commands)
    public_ssh_port         = var.public_ssh_port
    sync_logs_cron_job      = var.enable_logs_s3_sync ? "*/5 * * * * /usr/bin/bastion/sync_s3" : ""
  }))

  # ebs configurations
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      volume_size           = 10
      delete_on_termination = true
      volume_type           = "gp2" # default is gp2
      encrypted              = true
      kms_key_id            = var.disk_encrypt ? data.aws_kms_alias.kms-ebs.target_key_arn : ""
    }
  }

  monitoring {
    enabled = true
  }

  lifecycle {
    create_before_destroy = true
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "Bastion-ASG-Launch-Template"
    }

  }
}
