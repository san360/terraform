variable "env" {
  description = "Possible values dev, prod"
}


variable "container_name" {
  description = "Name of container"
  type = "map"
  default = {
    dev = "dev_blog"
    prod = "prod_blog"
  }
}
variable "image" {
  description = "image for container"
  type = "map"
  default = {
    dev ="ghost:latest"
    prod ="ghost:alpine"
  }
}
variable "int_port" {
  description = "internal port for container"
  default = "2368"
}
variable "ext_port" {
  description = "external port for container"
  default = "2368"
}