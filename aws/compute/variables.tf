variable "ami_owner" {}

variable "key_name" {}

variable "key_path" {}

variable "instance_type" {}

variable "instance_count" {}

variable "security_group_id" { }

variable "subnets" {
  type = "list"
}