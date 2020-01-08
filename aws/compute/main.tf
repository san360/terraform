data "aws_ami" "server_ami" {
  most_recent = true
  owners = ["${var.ami_owner}"]
}

resource "aws_key_pair" "auth" {
  key_name = "${var.key_name}"
  public_key = "${file(var.key_path)}"
}

resource "aws_instance" "ec2" {
  count = "${var.instance_count}"
  ami = "${data.aws_ami.server_ami.id}"
  instance_type = "${var.instance_type}"
  tags = {
      Name = "tf_server-${count.index + 1}"
  }
  key_name = "${aws_key_pair.auth.id}"
  vpc_security_group_ids = "${var.security_group_id}"
  subnet_id              = "${element(var.subnets, count.index)}"
  }
