# vpc  variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cider block"
  type        = string

}

variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string

}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type        = string

}

variable "private_app_subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type        = string

}

variable "private_app_subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  default     = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type        = string
}

# security group variables
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "the ip address that can ssh into ec2"
  type        = string
}

#rds variables
variable "database_snapshot_identifier" {
  default     = "arn:aws:rds:us-east-2:584598784989:snapshot:shopwise-rds-db-snapshot"
  description = "database snapshot arm"
  type        = string
}

variable "database_instance_class" {
  default     = "db.m7g.large"
  description = "database instance type"
  type        = string
}


variable "database_instance_identifier" {
  default     = "shopwise-rds-db"
  description = "database instance identifier"
  type        = string
}

variable "multi_az_deployment" {
  default     = false
  description = "create a standby db instance"
  type        = bool
}

#  application load balancer variables
variable "ssl_certificate_arn" {
  default     = "arn:aws:acm:us-east-2:584598784989:certificate/c6ed8508-d2ce-489c-aa21-a6e577a4caa9"
  description = "ssl certificate arn"
  type        = string
}

#SNS topic variable
variable "operator_email" {
  default     = "logunlaja26@gmail.com"
  description = "valid email address"
  type        = string
}

#ASG variables
variable "lauch_template_name" {
  default     = "dev-launch-template"
  description = "name of launch template"
  type        = string
}

variable "ec2_image_id" {
  default     = "ami-01c85d20bb0996f2e"
  description = "id of AMI"
  type        = string
}

variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "ec2 instance type"
  type        = string
}

variable "ec2_key_pair_name" {
  default     = "my-ec2key"
  description = "name of ec2 key pair"
  type        = string
}