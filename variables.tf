variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "key_name" {
  type    = string
  default = "pub_key"
}

variable "alb_in_allowed_ports" {
  description = "Allow ports to AWS ALB - Inbound"
  type        = list
  default     = ["80", "443"]
}

variable "bastion_in_allowed_ports" {
  description = "Allow ports to Bastion server - Inbound"
  type        = list
  default     = ["22"]
}

variable "bastion_in_allowed_subnets" {
  description = "Allow subnets to Bastion server - Inbound"
  type        = list
  default     = ["1.1.1.1/32", "2.2.2.2/32", "0.0.0.0/0"]
}

variable "alb_in_allowed_subnets" {
  description = "Allow ports to ALB - Inbound"
  type        = list
  default     = ["1.1.1.1/32", "2.2.2.2/32", "0.0.0.0/0"]
}

variable "worker_instance_type" {
  type    = string
  default = "t3.small"
}

variable "bastion_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "bm_project_vpc_cidr_block" {
  type    = string
  default = "192.168.0.0/16"
}

variable "public_subnet_cidr_block_az0" {
  type    = string
  default = "192.168.60.0/24"
}

variable "public_subnet_cidr_block_az1" {
  type    = string
  default = "192.168.70.0/24"
}

variable "private_subnet_cidr_block" {
  type    = string
  default = "192.168.50.0/24"
}

variable "worker_instance_private_ip" {
  type    = string
  default = "192.168.50.11"
}

variable "bastion_instance_private_ip" {
  type    = string
  default = "192.168.60.10"
}

variable "worker_allowed_ports" {
  description = "Allow ports to worker - Inbound"
  type        = list
  default     = ["22", "80", "443"]
}

variable "alb_name" {
  type    = string
  default = "AWSAppLB"
}

variable "alb_target_gr_name" {
  type    = string
  default = "WorkerTargetGr"
}

variable "environment" {
  type    = string
  default = "TEST"
}

variable "worker_backend_protocol" {
  type    = string
  default = "HTTP"
}

variable "worker_backend_port" {
  default = 80
}

variable "target_type" {
  default = "instance"
}

variable "certificate_arn" {
  default = "arn:aws:acm:eu-central-1:581680988389:certificate/c9a38578-b22c-4f5e-a06f-14597d0ccccc"
}