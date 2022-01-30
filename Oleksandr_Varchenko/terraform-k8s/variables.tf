variable "aws_region" {
  default = "eu-central-1"
}

variable "cluster_name" {
  description = "Enter your claster name"
  type        = string
}

variable "nodes_desired_size" {
  description = "How many nodes do you need"
  type        = number
}

variable "nodes_max_size" {
  description = "Max number of nodes"
  type        = number
}

variable "nodes_min_size" {
  description = "Min number of nodes"
  type        = number
}

variable "instance_type" {
  description = "Enter instance type, default t3.medium"
  type        = string
}

variable "instance_disk_size" {
  description = "Enter instance type disk size, default 20 GiB"
  type        = number
}

