# Download the ghost images
resource "docker_image" "image_id" {
  name = "${var.image}"
  keep_locally = true
}