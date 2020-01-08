data "aws_availability_zones" "available" {
  
}

data "aws_vpc" "selected" {
  id = "${var.vpc_id}"
}

data "aws_subnet_ids" "selected" {
  vpc_id = "${var.vpc_id}"
}

data "aws_security_groups" "selected" {
filter {
    name   = "group-name"
    values = ["${var.security_group_name}"]
  }
  filter {
    name   = "vpc-id"
    values = ["${var.vpc_id}"]
  }
}
