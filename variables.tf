variable "region" {
  type        = string
  description = "AWS region"
}

# network module
variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

# bastion module
variable "bastion_instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t3.small"
}

variable "bastion_min_size" {
  description = "Autoscaling min EC2 amount for bastion instance"
  default     = 1
}

variable "bastion_max_size" {
  description = "Autoscaling max EC2 amount for bastion instance"
  default     = 6
}

variable "bastion_desired_capacity" {
  description = "Autoscaling desired EC2 amount for bastion instance"
  default     = 3
}

variable "bastion_access_ip" {
  description = "IPs allowed to access the security groups"
  default     = "0.0.0.0/0"
}

variable "bastion_warmup" {
  description = "Autoscaling warmup time in seconds."
  default     = 180
}

variable "bastion_key" {
  description = "SSH Keyname"
  default     = "bastion" # your ssh keyname
}
