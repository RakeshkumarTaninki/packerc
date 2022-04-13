variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_name" {
  type    = string
  default = "assignment-4-image"
}

variable "base_ami" {
  type    = string
  default = "ami-0c02fb55956c7d316"
}

variable "subnet_id" {
  type    = string
  default = "subnet-0c23bba8246a516c7"
}

variable "security_group_id" {
  type    = string
  default = "sg-0f4e0b09a6f0e7045"
}
