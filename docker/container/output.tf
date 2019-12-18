# output name and ip address
output "IP_Address" {
    value = "${docker_container.container_id.ip_address}"
}

output "Container_Name" {
    value = "${docker_container.container_id.name}"
} 