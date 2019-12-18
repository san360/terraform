module "image" {
  source = "./image"
  image = "${lookup(var.image,var.env)}"
}

module "container" {
  source = "./container"
  name = "${lookup(var.container_name,var.env)}"
  image = "${module.image.image_out}"
  int_port = "${var.int_port}"
  ext_port = "${var.ext_port}"
}
