variable "warmup" {
  description = "Time to warm up the EC2"
}

variable "min_size" {
  description = "Autoscaling minimum EC2 count"
}

variable "max_size" {
  description = "Autoscaling maximum EC2 count"
}

variable "desired_capacity" {
  description = "Autoscaling desired EC2 count"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t3.small"
}

variable "bastion_key" {
  description = "EC2 Instance key name"
}

variable "public_subnets" {
  description = "Public Subnets"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
}

variable "access_ip" {
  description = "IPs allowed to access the security groups"
  default     = "0.0.0.0/0"
}

variable "https_port" {
  default = 443
}

variable "http_port" {
  default = 80
}

variable "ssh_port" {
  default = 22
}

variable "ports" {
  default = {
    ports = [80, 443]
  }
}

variable "region" {
  type        = string
  description = "AWS region"
  default     = "ap-southeast-1"
}

variable "bucket_name" {
  type        = string
  description = "Bucket-Name"
  default     = "accredify-bastion"
}

variable "bucket_versioning" {
  default     = true
  description = "Enable bucket versioning or not"
}

variable "bucket_force_destroy" {
  default     = false
  description = "The bucket and all objects should be destroyed when using true"
}

variable "public_ssh_port" {
  description = "Set the SSH port to use from desktop to the bastion"
  default     = 22
}

variable "private_ssh_port" {
  description = "Set the SSH port to use between the bastion and private instance"
  default     = 22
}

variable "allow_ssh_commands" {
  description = "Allows the SSH user to execute one-off commands. Pass true to enable. Warning: These commands are not logged and increase the vulnerability of the system. Use at your own discretion."
  type        = bool
  default     = true
}

variable "extra_user_data_content" {
  description = "Additional scripting to pass to the bastion host. For example, this can include installing postgresql for the `psql` command."
  type        = string
  default     = ""
}

variable "bastion_iam_role_name" {
  description = "IAM role name to create"
  type        = string
  default     = null
}

variable "bastion_iam_role_policy" {
  description = "IAM policy name to create for granting the instance role access to the bucket"
  default     = "BastionHost"
}

variable "bastion_iam_permissions_boundary" {
  description = "IAM Role Permissions Boundary to constrain the bastion host role"
  default     = ""
}

variable "kms_enable_key_rotation" {
  description = "Enable key rotation for the KMS key"
  type        = bool
  default     = false
}

variable "log_standard_ia_days" {
  description = "Number of days before moving logs to IA Storage"
  default     = 30
}

variable "log_glacier_days" {
  description = "Number of days before moving logs to Glacier"
  default     = 90
}

variable "log_expiry_days" {
  description = "Number of days before logs expiration"
  default     = 180
}

variable "log_autoclean" {
  description = "Enable or disable the lifecycle"
  default     = true
}

variable "enable_logs_s3_sync" {
  description = "Enable cron job to copy logs to S3"
  type        = bool
  default     = true
}

variable "disk_encrypt" {
  description = "Instance EBS encrypt"
  type        = bool
  default     = true
}
