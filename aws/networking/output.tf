output "subnets" {
  value = "${data.aws_subnet_ids.selected.ids}"
}
output "securitygroup" {
  value = "${data.aws_security_groups.selected.ids}"
}
