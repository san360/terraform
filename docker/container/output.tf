# output name and ip address
output "ip_address" {
    value = "${docker_container.container_id.ip_address}"
}

output "container_name" {
    value = "${docker_container.container_id.name}"
} 