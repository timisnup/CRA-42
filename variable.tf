variable "region" {
  default = "eu-west-2"
}


variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "pub_sub_1" {
  default = "10.0.1.0/24"
}


variable "pri_sub_1" {
  default = "10.0.3.0/24"
}


variable "route_cidr" {
  default = "0.0.0.0/0"
}

variable "instance_ami" {
  default = "ami-078a289ddf4b09ae0"
}
