# Setup provider
provider "aws" {
  region = "${var.aws_region}"
  shared_credentials_file = "${var.shared_credential_file}"
}

#Deploy storage resources
module "s3_bucket" {
  source = "./storage"
  project_name = "${var.project_name}"
}

output "bucket_name" {
  value = "${module.s3_bucket.bucketname}"
}

#---Network module-----
module "network" {
  source = "./networking"
  vpc_id = "${var.vpc_id}"
  security_group_name ="${var.security_group_name}"
  route_table_id = "${var.route_table_id}"
}

#---Compute module---
module "compute" {
  source = "./compute"
  ami_owner = "${var.ami_owner}"
  key_name="${var.key_name}"
  key_path="${var.key_path}"
  instance_type = "${var.instance_type}"
  instance_count = "${var.instance_count}"
  subnets = "${module.network.subnets}"
  security_group_id  = "${module.network.securitygroup}"
}
