#Output the IP Address of the Container
output "IP_Address" {
  value = "${module.container.ip_address}"
}

output "Container_Name" {
  value = "${module.container.container_name}"
}

