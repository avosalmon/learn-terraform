variable "vpc_id" {
  type = string
  description = "The id of the VPC to create the subnet in."
}

variable "public_subnet_ids" {
  type = object({
    a = string
    b = string
    c = string
  })
}

variable "private_network_subnet_ids" {
  type = object({
    a = string
    b = string
    c = string
  })
}

variable "private_app_subnet_ids" {
  type = object({
    a = string
    b = string
    c = string
  })
}

variable "private_db_subnet_ids" {
  type = object({
    a = string
    b = string
    c = string
  })
}
