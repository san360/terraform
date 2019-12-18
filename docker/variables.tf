variable "env" {
  description = "Possible values dev, prod"
}


variable "container_name" {
  description = "Name of container"
  type = "map"
}
variable "image" {
  description = "image for container"
  type = "map"
}
variable "int_port" {
  description = "internal port for container"
  default = "2368"
}
variable "ext_port" {
  description = "external port for container"
  default = "2368"
}