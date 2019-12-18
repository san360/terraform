module "image" {
  source = "./image"
}

module "container" {
  source = "./container"
  image = "${module.image.image_out}"
}
