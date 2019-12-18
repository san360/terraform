module "image" {
  source = "./image"
  image = "${var.image}"
}

module "container" {
  source = "./container"
  name = "${var.container_name}"
  image = "${module.image.image_out}"
  int_port = "${var.int_port}"
  ext_port = "${var.ext_port}"
}
